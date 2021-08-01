using HTTPStatus
using Test

@testset "is_information" begin
    @test is_information(100) == true
    @test is_information(11) == false
end

@testset "is_success" begin
    for pair = [(200, true), (299, true),
                         (300, false), (11, false)
                         ]
        @test is_success(pair[1]) == pair[2]
    end
end

@testset "is_redirect" begin
    for pair = [(300, true), (399, true),
                (400, false), (11, false)
                ]
        @test is_redirect(pair[1]) == pair[2]
    end
end

@testset "is_client_error" begin
    for pair = [(400, true), (499, true),
                (500, false), (11, false)
                ]
        @test is_client_error(pair[1]) == pair[2]
    end
end

@testset "is_server_error" begin
    for pair = [(500, true), (599, true),
                (400, false), (11, false)
                ]
        @test is_server_error(pair[1]) == pair[2]
    end
end

@testset "codes" begin
    @test HTTP_200_OK == 200
    @test HTTP_410_GONE == 410
    @test HTTP_418_IM_A_TEAPOT == 418
end
