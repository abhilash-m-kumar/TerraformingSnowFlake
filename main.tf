terraform {
  required_providers {
    snowflake = {
      source = "chanzuckerberg/snowflake"
      version = "0.25.36"
    }
  }
}

provider "snowflake" {
   alias = "sys_admin" 
   role = "SYSADMIN"
   SNOWFLAKE_USER = "tf-snow"
   SNOWFLAKE_REGION = "ca-central-1" 
   SNOWFLAKE_ACCOUNT = "mp95585" 
   SNOWFLAKE_PRIVATE_KEY_PATH = "MIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDtUITPkbBzaGvey2VW5MYhQkHZ9htgMZ5L8zG3ivCvClLMDDaX0jdtwbxKaqtAXS5cdAvK2A+dtuVy+uIhrbUY9RoU+EKjSbsORr8jJfwz2q4siDvFlpcpeQqUTMIU3bF/qYCjhMejILBKfBENCcYlB81jYBbqXt3i6CfVhWpOGLBfhl/PLdLXUyaapF+nerLdoBs95rL6xjI/MUT1ANkiwHyvPr7KNy1uEM5i6B0MrUBGrvGhN4M36Aj7cJElrSpRw8G0qPAB0f5u878T/vkbpZhfShNnZDiWb7S3LebWmRdoM7heMvlIhOfxxyMPDFcWXBQU8FFLOaUQTkDnEbi1AgMBAAECggEBAKuZZn+lTF8XKbEPiDa99FqGS5Gs+PykxF8M+m1KxWD86QPs7Oj5M+Vkip+Q5EYFWwm1S/WgKCKV5vIuYaeSsPnb+cEiByWFogHfvERRKj3gqcM/u2DT1HhDsxerLUfjSn8SdRdIYwcdEvy5G6c+4w1Rx/1MtSVB9dYmou8tqsHOifnEA2LsXqxRfWqzIjFxe00epWtlzIvndr6oUp6042NdYc3JlFb9HwvHYVHtEiD44Pd9GKcsj7+kcArgD+SxDwn672iwKsnyOVV6LWuqMGZs4V5OqAG/6BZmdme3Njq4e1SWX4FiT3Bm4+jayczV4oUfcbS/YWHJQJ1kYb+UGf0CgYEA+Irb9RS0qwG8vFuYoqvNec4huYq2j/+Q5EschO9XQFElN0sv4zoy3kKCSJX7nGUMv3FyWjyRFFbW8UapwG3bcbMad/OEqZrOzDZWyk/mmIDASlzcDJJALg74agPZiifkD65VLA6OU1mDYYCt0FnobKZSDiBfIQdGqOY/vioDwRsCgYEA9G9qC3Dvkl7rNpL90U183r64x+LDXD1eHoccDV6DcQEC3FthVK9xmVHjQQe2dw94sKwEsfLLW1w7zEI/BibKFCLxTSYloj4qysMEeiDg3BJ0E++ZEwXeQJd5jmuUuRHJ4GjCKNlX92NT2fhsT9zaUjIZUUlbpcxHSblf1UcA2m8CgYBn2d2+skArlDZAniVRE2hwFOmSlZti3+6y9Y+dHETg4wch65C+6XqH1FKL8d+IodCJzeVyPwx/6yk098nGViDziVrt9Brio4T1X180ed5oqqOubs6jkhivJiI2ahVj3Pc2dimwlwRxX12+R/5YqLitbXGr5WraaifkOxE3bGbVMQKBgARSoBZ5tdLp2NELQm/cJfQufUgTq47LCwoRK57U6BAsi2doOk1sGN80QoeY4lIytNizAhY/i/cep3QSS9kJAJPgllHd9dZrsQgK8N5UDIX30ZO0rglXFjogM6cgIe4v8VkFoUFlrpeSax40tX2oEzhW6Hm2iWdiOHSGUbqM2egDAoGAJEpXwO9MDvsVBJ0L0gRmmZM0RMG+x7Djeyt2QvBdOag+UoCF/7PtFFpVFjeHF9FYY/sKjXy40mm5vali4BZpmKaPEjocgjBmcSwBFXH77wS6gQ+lJtITjFzVmFIKvbpkVlZ/xtFSnSxGUd4eTDnP8+kpujYVlO2uFmNBfLDKabc=" 
    
}

resource "snowflake_database" "db" {
  name     = "TF_DEMO"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "TF_DEMO"
  warehouse_size = "large"

  auto_suspend = 60
}