from django.shortcuts import render, HttpResponse, redirect
from .forms import UsersDetailsForm, LoginForm
from .models import User
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required


def home_view(request):
    if request.method == 'POST':
        form = UsersDetailsForm(request.POST)
        if form.is_valid():
            details = form.save(commit=False)
            cd = form.cleaned_data
            details.save()
            return redirect('login')
    else:
        form = UsersDetailsForm
    return render(request, 'zalego/home.html', {'form': form})


def user_login(request):
    if request.method == 'POST':
        form = LoginForm(request.POST)
        if form.is_valid():
            cd = form.cleaned_data
            user = authenticate(username=cd['username'], password=cd['password'])
            if user is not None:
                if user.is_active:
                    login(request, user)
                    return redirect('data')
                else:
                    return HttpResponse('Disabled account')
            else:
                return HttpResponse('Invalid credentials')
    else:
        form = LoginForm()
    return render(request, 'zalego/login.html', {'form': form})


@login_required
def details_view(request):
    data = User.objects.all()
    return render(request, 'zalego/data.html', {'data': data})


@login_required
def user_logout(request):
    logout(request)
    return redirect('home')
