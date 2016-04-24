#
# Copyright 2016 SmartBear Software
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
#
package WWW::SwaggerClient::DefaultApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::SwaggerClient::ApiClient;
use WWW::SwaggerClient::Configuration;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class   = shift;
    my (%self) = (
        'api_client' => WWW::SwaggerClient::ApiClient->instance,
        @_
    );

    #my $self = {
    #    #api_client => $options->{api_client}
    #    api_client => $default_api_client
    #}; 

    bless \%self, $class;

}


#
# all_pixels_get
#
# 
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ all_pixels_get } = { 
    	summary => '',
        params => $params,
        returns => 'Pixelmap',
        };
}
# @return Pixelmap
#
sub all_pixels_get {
    my ($self, %args) = @_;

    

    # parse inputs
    my $_resource_path = '/all_pixels';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    
    
    
    
    my $_body_data;
    

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('Pixelmap', $response);
    return $_response_object;
    
}

#
# dot_x_put
#
# 
# 
# @param Colour $colour  (required)
# @param Number $x x component of pixel (required)
# @param Number $y y component of pixel (required)
{
    my $params = {
    'colour' => {
        data_type => 'Colour',
        description => '',
        required => '1',
    },
    'x' => {
        data_type => 'Number',
        description => 'x component of pixel',
        required => '1',
    },
    'y' => {
        data_type => 'Number',
        description => 'y component of pixel',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ dot_x_put } = { 
    	summary => '',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub dot_x_put {
    my ($self, %args) = @_;

    
    # verify the required parameter 'colour' is set
    unless (exists $args{'colour'}) {
      croak("Missing the required parameter 'colour' when calling dot_x_put");
    }
    
    # verify the required parameter 'x' is set
    unless (exists $args{'x'}) {
      croak("Missing the required parameter 'x' when calling dot_x_put");
    }
    
    # verify the required parameter 'y' is set
    unless (exists $args{'y'}) {
      croak("Missing the required parameter 'y' when calling dot_x_put");
    }
    

    # parse inputs
    my $_resource_path = '/dot/{x}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'y'}) {
        $query_params->{'y'} = $self->{api_client}->to_query_value($args{'y'});
    }
    
    # path params
    if ( exists $args{'x'}) {
        my $_base_variable = "{" . "x" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'x'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }
    
    my $_body_data;
    # body params
    if ( exists $args{'colour'}) {
        $_body_data = $args{'colour'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
    
}

#
# monoframe_pixelmap_put
#
# 
# 
# @param string $pixelmap map of pixel (required)
# @param Colour $colour  (required)
{
    my $params = {
    'pixelmap' => {
        data_type => 'string',
        description => 'map of pixel',
        required => '1',
    },
    'colour' => {
        data_type => 'Colour',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ monoframe_pixelmap_put } = { 
    	summary => '',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub monoframe_pixelmap_put {
    my ($self, %args) = @_;

    
    # verify the required parameter 'pixelmap' is set
    unless (exists $args{'pixelmap'}) {
      croak("Missing the required parameter 'pixelmap' when calling monoframe_pixelmap_put");
    }
    
    # verify the required parameter 'colour' is set
    unless (exists $args{'colour'}) {
      croak("Missing the required parameter 'colour' when calling monoframe_pixelmap_put");
    }
    

    # parse inputs
    my $_resource_path = '/monoframe/{pixelmap}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    
    
    # path params
    if ( exists $args{'pixelmap'}) {
        my $_base_variable = "{" . "pixelmap" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pixelmap'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }
    
    my $_body_data;
    # body params
    if ( exists $args{'colour'}) {
        $_body_data = $args{'colour'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
    
}

#
# monoline_put
#
# 
# 
# @param Colour $colour  (required)
# @param Number $line location of line (optional)
# @param string $pixelmap bitmap of pixels to show (optional)
{
    my $params = {
    'colour' => {
        data_type => 'Colour',
        description => '',
        required => '1',
    },
    'line' => {
        data_type => 'Number',
        description => 'location of line',
        required => '0',
    },
    'pixelmap' => {
        data_type => 'string',
        description => 'bitmap of pixels to show',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ monoline_put } = { 
    	summary => '',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub monoline_put {
    my ($self, %args) = @_;

    
    # verify the required parameter 'colour' is set
    unless (exists $args{'colour'}) {
      croak("Missing the required parameter 'colour' when calling monoline_put");
    }
    

    # parse inputs
    my $_resource_path = '/monoline';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'line'}) {
        $query_params->{'line'} = $self->{api_client}->to_query_value($args{'line'});
    }# query params
    if ( exists $args{'pixelmap'}) {
        $query_params->{'pixelmap'} = $self->{api_client}->to_query_value($args{'pixelmap'});
    }
    
    
    
    my $_body_data;
    # body params
    if ( exists $args{'colour'}) {
        $_body_data = $args{'colour'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
    
}

#
# show_get
#
# 
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ show_get } = { 
    	summary => '',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub show_get {
    my ($self, %args) = @_;

    

    # parse inputs
    my $_resource_path = '/show';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    
    
    
    
    my $_body_data;
    

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
    
}


1;