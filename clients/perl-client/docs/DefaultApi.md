# WWW::SwaggerClient::DefaultApi

## Load the API package
```perl
use WWW::SwaggerClient::Object::DefaultApi;
```

All URIs are relative to *http://192.168.1.88:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**all_pixels_get**](DefaultApi.md#all_pixels_get) | **GET** /all_pixels | 
[**dot_x_put**](DefaultApi.md#dot_x_put) | **PUT** /dot/{x} | 
[**monoframe_pixelmap_put**](DefaultApi.md#monoframe_pixelmap_put) | **PUT** /monoframe/{pixelmap} | 
[**monoline_put**](DefaultApi.md#monoline_put) | **PUT** /monoline | 
[**show_get**](DefaultApi.md#show_get) | **GET** /show | 


# **all_pixels_get**
> Pixelmap all_pixels_get()



### Example 
```perl
use Data::Dumper;

my $api_instance = WWW::SwaggerClient::DefaultApi->new();

eval { 
    my $result = $api_instance->all_pixels_get();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling DefaultApi->all_pixels_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Pixelmap**](Pixelmap.md)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **dot_x_put**
> dot_x_put(colour => $colour, x => $x, y => $y)



Paint a single pixel

### Example 
```perl
use Data::Dumper;

my $api_instance = WWW::SwaggerClient::DefaultApi->new();
my $colour = WWW::SwaggerClient::Object::Colour->new(); # Colour | 
my $x = ; # Number | x component of pixel
my $y = ; # Number | y component of pixel

eval { 
    $api_instance->dot_x_put(colour => $colour, x => $x, y => $y);
};
if ($@) {
    warn "Exception when calling DefaultApi->dot_x_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **colour** | [**Colour**](Colour.md)|  | 
 **x** | [**Number**](.md)| x component of pixel | 
 **y** | [**Number**](.md)| y component of pixel | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **monoframe_pixelmap_put**
> monoframe_pixelmap_put(pixelmap => $pixelmap, colour => $colour)



Shows single frame

### Example 
```perl
use Data::Dumper;

my $api_instance = WWW::SwaggerClient::DefaultApi->new();
my $pixelmap = 'pixelmap_example'; # string | map of pixel
my $colour = WWW::SwaggerClient::Object::Colour->new(); # Colour | 

eval { 
    $api_instance->monoframe_pixelmap_put(pixelmap => $pixelmap, colour => $colour);
};
if ($@) {
    warn "Exception when calling DefaultApi->monoframe_pixelmap_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pixelmap** | **string**| map of pixel | 
 **colour** | [**Colour**](Colour.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **monoline_put**
> monoline_put(colour => $colour, line => $line, pixelmap => $pixelmap)



Sets single line

### Example 
```perl
use Data::Dumper;

my $api_instance = WWW::SwaggerClient::DefaultApi->new();
my $colour = WWW::SwaggerClient::Object::Colour->new(); # Colour | 
my $line = ; # Number | location of line
my $pixelmap = 'pixelmap_example'; # string | bitmap of pixels to show

eval { 
    $api_instance->monoline_put(colour => $colour, line => $line, pixelmap => $pixelmap);
};
if ($@) {
    warn "Exception when calling DefaultApi->monoline_put: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **colour** | [**Colour**](Colour.md)|  | 
 **line** | [**Number**](.md)| location of line | [optional] 
 **pixelmap** | **string**| bitmap of pixels to show | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_get**
> show_get()



Show all set pixels

### Example 
```perl
use Data::Dumper;

my $api_instance = WWW::SwaggerClient::DefaultApi->new();

eval { 
    $api_instance->show_get();
};
if ($@) {
    warn "Exception when calling DefaultApi->show_get: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP reuqest headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

