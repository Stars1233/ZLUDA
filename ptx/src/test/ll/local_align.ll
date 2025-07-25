define amdgpu_kernel void @local_align(ptr addrspace(4) byref(i64) %"31", ptr addrspace(4) byref(i64) %"32") #0 {
  %"10" = alloca [8 x i8], align 8, addrspace(5)
  %"33" = alloca i64, align 8, addrspace(5)
  %"34" = alloca i64, align 8, addrspace(5)
  %"35" = alloca i64, align 8, addrspace(5)
  br label %1

1:                                                ; preds = %0
  br label %"30"

"30":                                             ; preds = %1
  %"36" = load i64, ptr addrspace(4) %"31", align 8
  store i64 %"36", ptr addrspace(5) %"33", align 8
  %"37" = load i64, ptr addrspace(4) %"32", align 8
  store i64 %"37", ptr addrspace(5) %"34", align 8
  %"39" = load i64, ptr addrspace(5) %"33", align 8
  %"42" = inttoptr i64 %"39" to ptr
  %"38" = load i64, ptr %"42", align 8
  store i64 %"38", ptr addrspace(5) %"35", align 8
  %"40" = load i64, ptr addrspace(5) %"34", align 8
  %"41" = load i64, ptr addrspace(5) %"35", align 8
  %"43" = inttoptr i64 %"40" to ptr
  store i64 %"41", ptr %"43", align 8
  ret void
}

attributes #0 = { "amdgpu-unsafe-fp-atomics"="true" "denormal-fp-math"="preserve-sign" "denormal-fp-math-f32"="preserve-sign" "no-trapping-math"="true" "uniform-work-group-size"="true" }