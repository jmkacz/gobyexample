# Running this program will cause it to panic, print
# an error message and goroutine traces, and exit with
# a non-zero status.
$ go run panic.go
panic: a problem

goroutine 1 [running]:
main.main()
	/.../panic.go:14 +0x64

goroutine 2 [runnable]:
runtime.forcegchelper()
	/usr/local/go/src/runtime/proc.go:90
runtime.goexit()
	/usr/local/go/src/runtime/asm_amd64.s:2232 +0x1

goroutine 3 [runnable]:
runtime.bgsweep()
	/usr/local/go/src/runtime/mgc0.go:82
runtime.goexit()
	/usr/local/go/src/runtime/asm_amd64.s:2232 +0x1

goroutine 4 [runnable]:
runtime.runfinq()
	/usr/local/go/src/runtime/malloc.go:712
runtime.goexit()
	/usr/local/go/src/runtime/asm_amd64.s:2232 +0x1
exit status 2

# Note that unlike some languages which use exceptions
# for handling of many errors, in Go it is idiomatic
# to use error-indicating return values wherever possible.
