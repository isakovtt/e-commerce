

class Endpoints{
Endpoints._();

static const _baseUrl = 'https://fakestoreapi.com';
static const products = '$_baseUrl/products';


static const _baseUrlAuth = 'http://164.92.128.223:8000';
static const _users = '$_baseUrlAuth/users';

static const register = '$_users/register';
static const login = '$_users/login';


static const categories = '$_baseUrlAuth/products/categories';
static const flash = '$_baseUrlAuth/products/flash';
static const mega = '$_baseUrlAuth/products/mega';
static const recommended = '$_baseUrlAuth/products/recommended';
static const detail = '$_baseUrlAuth/products/detail';
static const comment = '$_baseUrlAuth/products/comment';


}