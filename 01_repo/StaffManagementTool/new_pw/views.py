from django.shortcuts import render

# Create your views here.
def new_pw_view(request):
    return render(request, 'new_pw.html')