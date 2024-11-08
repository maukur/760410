Repo with code for the bug reproducing:

https://developer.apple.com/forums/thread/756223  
https://stackoverflow.com/questions/78790467/crash-on-the-textview-in-the-foreach-wrapped-to-the-scrollview-and-programmatica


 
StackTrace:
```
Incident Identifier: DB167131-EC83-4698-B151-74EAD4B12998
Distributor ID:      com.apple.AppStore
Hardware Model:      iPad13,10
Process:             fivesecondbattle [2056]
Path:                /private/var/containers/Bundle/Application/894A656B-A4BF-48E6-8C93-8898D3569B0E/fivesecondbattle.app/fivesecondbattle
Identifier:          com.artemtishchenko.partygames.fivesecondsbattle
Version:             8.0 (87)
AppStoreTools:       15F31e
AppVariant:          1:iPad13,10:16
Code Type:           ARM-64 (Native)
Role:                Foreground
Parent Process:      launchd [1]
Coalition:           com.artemtishchenko.partygames.fivesecondsbattle [1223]

Date/Time:           2024-10-12 01:30:38.0464 +0300
Launch Time:         2024-10-11 22:41:00.8066 +0300
OS Version:          iPhone OS 18.0.1 (22A3370)
Release Type:        User
Baseband Version:    5.02.06
Report Version:      104

Exception Type:  EXC_BREAKPOINT (SIGTRAP)
Exception Codes: 0x0000000000000001, 0x00000001918d8880
Termination Reason: SIGNAL 5 Trace/BPT trap: 5
Terminating Process: exc handler [2056]

Triggered by Thread:  0


Thread 0 name:
Thread 0 Crashed:
0   libswiftCore.dylib            	0x00000001918d8880 closure #1 in closure #1 in closure #1 in _assertionFailure(_:_:file:line:flags:) + 228 (AssertCommon.swift:109)
1   libswiftCore.dylib            	0x00000001918d8758 closure #1 in closure #1 in _assertionFailure(_:_:file:line:flags:) + 332 (AssertCommon.swift:102)
2   libswiftCore.dylib            	0x00000001918d80e4 _assertionFailure(_:_:file:line:flags:) + 184 (AssertCommon.swift:98)
3   libswiftCore.dylib            	0x00000001918b7bb0 Array._checkSubscript(_:wasNativeTypeChecked:) + 156 (Array.swift:395)
4   libswiftCore.dylib            	0x00000001918ba2d8 Array.subscript.read + 180 (Array.swift:0)
5   libswiftCore.dylib            	0x00000001918ba1f4 protocol witness for Collection.subscript.read in conformance [A] + 68 (<compiler-generated>:0)
6   SwiftUICore                   	0x00000002509f8334 closure #1 in Binding<A>.subscript.getter + 212 (Binding.swift:331)
7   SwiftUICore                   	0x0000000250454fbc FunctionalLocation.get() + 28 (<compiler-generated>:0)
8   SwiftUICore                   	0x000000025092a34c LocationBox.get() + 292 (Location.swift:105)
9   SwiftUICore                   	0x000000025092b08c protocol witness for Location.get() in conformance LocationBox<A> + 24 (<compiler-generated>:0)
10  SwiftUICore                   	0x000000025092b2f0 ProjectedLocation.get() + 228 (Location.swift:188)
11  SwiftUICore                   	0x000000025092a34c LocationBox.get() + 292 (Location.swift:105)
12  SwiftUICore                   	0x00000002509f96c0 Binding.ScopedLocation.get() + 56 (Binding.swift:480)
13  SwiftUICore                   	0x000000025092a34c LocationBox.get() + 292 (Location.swift:105)
14  SwiftUICore                   	0x00000002509f96c0 Binding.ScopedLocation.get() + 56 (Binding.swift:480)
15  SwiftUICore                   	0x000000025092a34c LocationBox.get() + 292 (Location.swift:105)
16  SwiftUICore                   	0x000000025092bb04 ZipLocation.get() + 72 (Location.swift:276)
17  SwiftUICore                   	0x000000025092a34c LocationBox.get() + 292 (Location.swift:105)
18  SwiftUICore                   	0x000000025092b08c protocol witness for Location.get() in conformance LocationBox<A> + 24 (<compiler-generated>:0)
19  SwiftUICore                   	0x000000025092b2f0 ProjectedLocation.get() + 228 (Location.swift:188)
20  SwiftUICore                   	0x000000025092a34c LocationBox.get() + 292 (Location.swift:105)
21  SwiftUICore                   	0x00000002509f7468 Binding.readValue() + 260 (Binding.swift:209)
22  SwiftUI                       	0x0000000197ffe81c closure #1 in PlatformTextFieldCoordinator.didEndEditing() + 588 (SystemTextFieldStyle_PhoneTVWatch.swift:555)
23  SwiftUI                       	0x0000000197929c48 closure #1 in PlatformViewCoordinator.dispatchUpdate(_:) + 28 (<compiler-generated>:0)
24  SwiftUICore                   	0x00000002507fcdb0 static Update.dispatchImmediately<A>(_:) + 72 (Update.swift:219)
25  SwiftUI                       	0x0000000198006a60 specialized PlatformTextFieldCoordinator.textFieldDidEndEditing(_:reason:) + 588 (SystemTextFieldStyle_PhoneTVWatch.swift:664)
26  SwiftUI                       	0x00000001980012ec @objc PlatformTextFieldCoordinator.textFieldDidEndEditing(_:reason:) + 52 (<compiler-generated>:659)
27  UIKitCore                     	0x0000000195f6e814 -[UITextField _notifyDidEndEditing] + 132 (UITextField.m:1954)
28  UIKitCore                     	0x0000000195f6e710 -[UITextField _resignFirstResponder] + 168 (UITextField.m:2014)
29  UIKitCore                     	0x0000000195d4ef98 -[UIResponder _finishResignFirstResponderFromBecomeFirstResponder:] + 340 (UIResponder.m:488)
30  UIKitCore                     	0x0000000195d4e4b0 -[UIResponder resignFirstResponder] + 108 (UIResponder.m:512)
31  UIKitCore                     	0x0000000195d4c558 -[UITextField resignFirstResponder] + 96 (UITextField.m:1890)
32  UIKitCore                     	0x0000000195d4e774 -[UIResponder becomeFirstResponder] + 392 (UIResponder.m:414)
33  UIKitCore                     	0x0000000195cf4fdc -[UIView(Hierarchy) becomeFirstResponder] + 120 (UIView.m:13986)
34  UIKitCore                     	0x0000000195ddd7f0 -[UITextField becomeFirstResponder] + 164 (UITextField.m:1500)
35  UIKitCore                     	0x0000000196dba44c -[UITextInteractionAssistant(UITextInteractionAssistant_Internal) setFirstResponderIfNecessaryActivatingSelection:] + 128 (UITextInteractionAssistant.m:1808)
36  UIKitCore                     	0x0000000196d9a258 -[UITextSelectionInteraction _checkForRepeatedTap:gestureLocationOut:] + 188 (UITextSelectionInteraction.m:326)
37  UIKitCore                     	0x0000000196d9b10c -[UITextSelectionInteraction _handleMultiTapGesture:] + 852 (UITextSelectionInteraction.m:656)
38  UIKitCore                     	0x0000000195ddedd8 -[UIApplication sendAction:to:from:forEvent:] + 100 (UIApplication.m:5797)
39  UIKitCore                     	0x0000000196690968 -[UITextMultiTapRecognizer onStateUpdate:] + 280 (UITextMultiTapRecognizer.m:62)
40  UIKitCore                     	0x0000000195e0df20 -[UIGestureRecognizerTarget _sendActionWithGestureRecognizer:] + 128 (UIGestureRecognizer.m:179)
41  UIKitCore                     	0x0000000195e0dd90 _UIGestureRecognizerSendTargetActions + 92 (UIGestureRecognizer.m:1749)
42  UIKitCore                     	0x0000000195e0db50 _UIGestureRecognizerSendActions + 284 (UIGestureRecognizer.m:1788)
43  UIKitCore                     	0x0000000195ac0e08 -[UIGestureRecognizer _updateGestureForActiveEvents] + 572 (UIGestureRecognizer.m:0)
44  UIKitCore                     	0x0000000195a9190c _UIGestureEnvironmentUpdate + 2488 (UIGestureEnvironment.m:192)
45  UIKitCore                     	0x0000000195b875e4 -[UIGestureEnvironment _deliverEvent:toGestureRecognizers:usingBlock:] + 336 (UIGestureEnvironment.m:843)
46  UIKitCore                     	0x0000000195d27be8 -[UIGestureEnvironment _updateForEvent:window:] + 188 (UIGestureEnvironment.m:810)
47  UIKitCore                     	0x0000000195d26fcc -[UIWindow sendEvent:] + 2948 (UIWindow.m:3627)
48  UIKitCore                     	0x0000000195bbb684 -[UIApplication sendEvent:] + 376 (UIApplication.m:12953)
49  UIKitCore                     	0x0000000195bbbbb0 __dispatchPreprocessedEventFromEventQueue + 1048 (UIEventDispatcher.m:2641)
50  UIKitCore                     	0x0000000195bc5994 __processEventQueue + 5696 (UIEventDispatcher.m:2999)
51  UIKitCore                     	0x0000000195abdf40 updateCycleEntry + 160 (UIEventDispatcher.m:133)
52  UIKitCore                     	0x0000000195abbcb8 _UIUpdateSequenceRun + 84 (_UIUpdateSequence.mm:136)
53  UIKitCore                     	0x0000000195abb908 schedulerStepScheduledMainSection + 172 (_UIUpdateScheduler.m:1171)
54  UIKitCore                     	0x0000000195abc87c runloopSourceCallback + 92 (_UIUpdateScheduler.m:1334)
55  CoreFoundation                	0x000000019329c088 __CFRUNLOOP_IS_CALLING_OUT_TO_A_SOURCE0_PERFORM_FUNCTION__ + 28 (CFRunLoop.c:1950)
56  CoreFoundation                	0x000000019329c01c __CFRunLoopDoSource0 + 176 (CFRunLoop.c:1994)
57  CoreFoundation                	0x0000000193299b08 __CFRunLoopDoSources0 + 244 (CFRunLoop.c:2031)
58  CoreFoundation                	0x0000000193298d04 __CFRunLoopRun + 840 (CFRunLoop.c:2949)
59  CoreFoundation                	0x00000001932985b8 CFRunLoopRunSpecific + 572 (CFRunLoop.c:3414)
60  GraphicsServices              	0x00000001ded2e1c4 GSEventRunModal + 164 (GSEvent.c:2196)
61  UIKitCore                     	0x0000000195dee2c0 -[UIApplication _run] + 816 (UIApplication.m:3825)
62  UIKitCore                     	0x0000000195e9cddc UIApplicationMain + 340 (UIApplication.m:5477)
63  SwiftUI                       	0x00000001979f7804 closure #1 in KitRendererCommon(_:) + 168 (UIKitApp.swift:68)
64  SwiftUI                       	0x00000001979d4e68 runApp<A>(_:) + 100 (UIKitApp.swift:16)
65  SwiftUI                       	0x00000001979d7d68 static App.main() + 180 (App.swift:121)
66  fivesecondbattle              	0x00000001040cd750 static RootApp.$main() + 48 (RootApp.swift:0)
67  fivesecondbattle              	0x00000001040cd750 main + 60
68  dyld                          	0x00000001b8a6cd34 start + 2724 (dyldMain.cpp:1334)

Thread 1 name:
Thread 1:
0   libsystem_kernel.dylib        	0x00000001e30dc728 mach_msg2_trap + 8 (:-1)
1   libsystem_kernel.dylib        	0x00000001e30dfe38 mach_msg2_internal + 80 (mach_msg.c:201)
2   libsystem_kernel.dylib        	0x00000001e30dfd50 mach_msg_overwrite + 424 (mach_msg.c:0)
3   libsystem_kernel.dylib        	0x00000001e30dfb9c mach_msg + 24 (mach_msg.c:323)
4   CoreFoundation                	0x00000001932997cc __CFRunLoopServiceMachPort + 160 (CFRunLoop.c:2617)
5   CoreFoundation                	0x0000000193298e78 __CFRunLoopRun + 1212 (CFRunLoop.c:3001)
6   CoreFoundation                	0x00000001932985b8 CFRunLoopRunSpecific + 572 (CFRunLoop.c:3414)
7   CoreFoundation                	0x0000000193304850 CFRunLoopRun + 64 (CFRunLoop.c:3440)
8   libdispatch.dylib             	0x000000019af40370 _dispatch_call_block_and_release + 32 (init.c:1549)
9   libdispatch.dylib             	0x000000019af420d0 _dispatch_client_callout + 20 (object.m:576)
10  libdispatch.dylib             	0x000000019af496d8 _dispatch_lane_serial_drain + 744 (queue.c:3934)
11  libdispatch.dylib             	0x000000019af4a1e0 _dispatch_lane_invoke + 380 (queue.c:4025)
12  libdispatch.dylib             	0x000000019af55258 _dispatch_root_queue_drain_deferred_wlh + 288 (queue.c:7193)
13  libdispatch.dylib             	0x000000019af54aa4 _dispatch_workloop_worker_thread + 540 (queue.c:6787)
14  libsystem_pthread.dylib       	0x000000021a55fc7c _pthread_wqthread + 288 (pthread.c:2696)
15  libsystem_pthread.dylib       	0x000000021a55c488 start_wqthread + 8 (:-1)

Thread 2 name:
Thread 2:
0   libsystem_kernel.dylib        	0x00000001e30dc728 mach_msg2_trap + 8 (:-1)
1   libsystem_kernel.dylib        	0x00000001e30dfe38 mach_msg2_internal + 80 (mach_msg.c:201)
2   libsystem_kernel.dylib        	0x00000001e30dfd50 mach_msg_overwrite + 424 (mach_msg.c:0)
3   libsystem_kernel.dylib        	0x00000001e30dfb9c mach_msg + 24 (mach_msg.c:323)
4   CoreFoundation                	0x00000001932997cc __CFRunLoopServiceMachPort + 160 (CFRunLoop.c:2617)
5   CoreFoundation                	0x0000000193298e78 __CFRunLoopRun + 1212 (CFRunLoop.c:3001)
6   CoreFoundation                	0x00000001932985b8 CFRunLoopRunSpecific + 572 (CFRunLoop.c:3414)
7   Foundation                    	0x0000000191f2f000 -[NSRunLoop(NSRunLoop) runMode:beforeDate:] + 212 (NSRunLoop.m:373)
8   Foundation                    	0x0000000191f2ee50 -[NSRunLoop(NSRunLoop) runUntilDate:] + 64 (NSRunLoop.m:420)
9   UIKitCore                     	0x0000000195e01714 -[UIEventFetcher threadMain] + 420 (UIEventFetcher.m:1241)
10  Foundation                    	0x0000000191f40158 __NSThread__start__ + 724 (NSThread.m:991)
11  libsystem_pthread.dylib       	0x000000021a56137c _pthread_start + 136 (pthread.c:931)
12  libsystem_pthread.dylib       	0x000000021a55c494 thread_start + 8 (:-1)

Thread 3 name:
Thread 3:
0   libsystem_kernel.dylib        	0x00000001e30e346c kevent + 8 (:-1)
1   fivesecondbattle              	0x000000010440adbc realm::_impl::ExternalCommitHelper::listen() + 160 (external_commit_helper.cpp:219)
2   fivesecondbattle              	0x000000010440af48 realm::_impl::ExternalCommitHelper::ExternalCommitHelper(realm::_impl::RealmCoordinator&, realm::RealmConfig const&)::$_0::operator()() const + 4 (external_commit_helper.cpp:175)
3   fivesecondbattle              	0x000000010440af48 decltype(std::declval<realm::_impl::ExternalCommitHelper::ExternalCommitHelper(realm::_impl::RealmCoordinator&, realm::RealmConfig const&)::$_0>()()) std::__1::__invoke[abi:ue170006]<realm::_impl::... + 4 (invoke.h:340)
4   fivesecondbattle              	0x000000010440af48 void std::__1::__thread_execute[abi:ue170006]<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct>>, realm::_impl::ExternalCommitHelper::ExternalCommi... + 4 (thread.h:227)
5   fivesecondbattle              	0x000000010440af48 void* std::__1::__thread_proxy[abi:ue170006]<std::__1::tuple<std::__1::unique_ptr<std::__1::__thread_struct, std::__1::default_delete<std::__1::__thread_struct>>, realm::_impl::ExternalCommitHelper... + 56 (thread.h:238)
6   libsystem_pthread.dylib       	0x000000021a56137c _pthread_start + 136 (pthread.c:931)
7   libsystem_pthread.dylib       	0x000000021a55c494 thread_start + 8 (:-1)

Thread 4 name:
Thread 4:
0   libsystem_kernel.dylib        	0x00000001e30dc728 mach_msg2_trap + 8 (:-1)
1   libsystem_kernel.dylib        	0x00000001e30dfe38 mach_msg2_internal + 80 (mach_msg.c:201)
2   libsystem_kernel.dylib        	0x00000001e30dfd50 mach_msg_overwrite + 424 (mach_msg.c:0)
3   libsystem_kernel.dylib        	0x00000001e30dfb9c mach_msg + 24 (mach_msg.c:323)
4   CoreFoundation                	0x00000001932997cc __CFRunLoopServiceMachPort + 160 (CFRunLoop.c:2617)
5   CoreFoundation                	0x0000000193298e78 __CFRunLoopRun + 1212 (CFRunLoop.c:3001)
6   CoreFoundation                	0x00000001932985b8 CFRunLoopRunSpecific + 572 (CFRunLoop.c:3414)
7   CFNetwork                     	0x0000000194810f44 +[__CFN_CoreSchedulingSetRunnable _run:] + 416 (CoreSchedulingSet.mm:1473)
8   Foundation                    	0x0000000191f40158 __NSThread__start__ + 724 (NSThread.m:991)
9   libsystem_pthread.dylib       	0x000000021a56137c _pthread_start + 136 (pthread.c:931)
10  libsystem_pthread.dylib       	0x000000021a55c494 thread_start + 8 (:-1)

Thread 5:
0   libsystem_pthread.dylib       	0x000000021a55c480 start_wqthread + 0 (:-1)

Thread 6:
0   libsystem_pthread.dylib       	0x000000021a55c480 start_wqthread + 0 (:-1)

Thread 7:
0   libsystem_pthread.dylib       	0x000000021a55c480 start_wqthread + 0 (:-1)

Thread 8:
0   libsystem_pthread.dylib       	0x000000021a55c480 start_wqthread + 0 (:-1)

Thread 9:
0   libsystem_pthread.dylib       	0x000000021a55c480 start_wqthread + 0 (:-1)

Thread 10 name:
Thread 10:
0   libsystem_kernel.dylib        	0x00000001e30dc728 mach_msg2_trap + 8 (:-1)
1   libsystem_kernel.dylib        	0x00000001e30dfe38 mach_msg2_internal + 80 (mach_msg.c:201)
2   libsystem_kernel.dylib        	0x00000001e30dfd50 mach_msg_overwrite + 424 (mach_msg.c:0)
3   libsystem_kernel.dylib        	0x00000001e30dfb9c mach_msg + 24 (mach_msg.c:323)
4   CoreFoundation                	0x00000001932997cc __CFRunLoopServiceMachPort + 160 (CFRunLoop.c:2617)
5   CoreFoundation                	0x0000000193298e78 __CFRunLoopRun + 1212 (CFRunLoop.c:3001)
6   CoreFoundation                	0x00000001932985b8 CFRunLoopRunSpecific + 572 (CFRunLoop.c:3414)
7   Foundation                    	0x0000000191f2f000 -[NSRunLoop(NSRunLoop) runMode:beforeDate:] + 212 (NSRunLoop.m:373)
8   Foundation                    	0x0000000191f2eed4 -[NSRunLoop(NSRunLoop) run] + 64 (NSRunLoop.m:398)
9   SwiftUI                       	0x0000000197c5cc80 specialized static DisplayLink.asyncThread(arg:) + 792 (_UIHostingView.swift:1478)
10  SwiftUI                       	0x0000000197a0a5d0 @objc static DisplayLink.asyncThread(arg:) + 72 (<compiler-generated>:1460)
11  Foundation                    	0x0000000191f40158 __NSThread__start__ + 724 (NSThread.m:991)
12  libsystem_pthread.dylib       	0x000000021a56137c _pthread_start + 136 (pthread.c:931)
13  libsystem_pthread.dylib       	0x000000021a55c494 thread_start + 8 (:-1)


Thread 0 crashed with ARM Thread State (64-bit):
    x0: 0x0000000300eafa50   x1: 0x0000000000000000   x2: 0x0000000000000000   x3: 0x0000000300eafa60
    x4: 0x0000000000000000   x5: 0x000000016bd57b40   x6: 0x0000000000000065   x7: 0x0000000000000000
    x8: 0x0000000000000200   x9: 0x00000000a66011e3  x10: 0x00000000000001ff  x11: 0x0000000000003a40
   x12: 0x00000000000007fb  x13: 0x00000000000007fd  x14: 0x00000000a68019d3  x15: 0x00000000a66011e3
   x16: 0x00000000a6800000  x17: 0x00000000000001d3  x18: 0x0000000000000000  x19: 0x0000000000000004
   x20: 0x000000030282fd90  x21: 0x0000000300a47380  x22: 0x0000000000000004  x23: 0x000000030282fd90
   x24: 0x0000000000000008  x25: 0x00000001f7e056c8  x26: 0x00000000ffffffff  x27: 0x00000001f7e056c8
   x28: 0x00000001040ebfa4   fp: 0x000000016bd57bf0   lr: 0x00000001918d8880
    sp: 0x000000016bd57bd0   pc: 0x00000001918d8880 cpsr: 0x60001000
   esr: 0xf2000001 (Breakpoint) brk 1


Binary Images:
        0x1040a4000 -         0x10474bfff fivesecondbattle arm64  <5aaaa707340634e7a384f59bedd93cd0> /private/var/containers/Bundle/Application/894A656B-A4BF-48E6-8C93-8898D3569B0E/fivesecondbattle.app/fivesecondbattle
        0x1053c8000 -         0x1053d3fff libobjc-trampolines.dylib arm64e  <ece8465d62ec35e7810fcdedfc9817bf> /private/preboot/Cryptexes/OS/usr/lib/libobjc-trampolines.dylib
        0x1918a0000 -         0x191e3ffff libswiftCore.dylib arm64e  <24ec482a274c32f2aa6da809fabfdc58> /usr/lib/swift/libswiftCore.dylib
        0x191e78000 -         0x192b96fff Foundation arm64e  <6d058a2d05cf3a298bebb1030ae97282> /System/Library/Frameworks/Foundation.framework/Foundation
        0x193245000 -         0x19378afff CoreFoundation arm64e  <4250d45c51a93ac58c3d69de936fad46> /System/Library/Frameworks/CoreFoundation.framework/CoreFoundation
        0x194713000 -         0x194ad5fff CFNetwork arm64e  <7d799a941e3c3a4fb1a0d9414e8eaca5> /System/Library/Frameworks/CFNetwork.framework/CFNetwork
        0x195a10000 -         0x1978d0fff UIKitCore arm64e  <187c890e8e4c32f2a97efa905a55f094> /System/Library/PrivateFrameworks/UIKitCore.framework/UIKitCore
        0x1978d1000 -         0x198b9efff SwiftUI arm64e  <ee7bf04621303abd99d1664bafbae422> /System/Library/Frameworks/SwiftUI.framework/SwiftUI
        0x19af3e000 -         0x19af83fff libdispatch.dylib arm64e  <b8c15e69d076317d92961279500738fc> /usr/lib/system/libdispatch.dylib
        0x19af84000 -         0x19b003ff3 libsystem_c.dylib arm64e  <1ad666a001a831c188b9808915fb97b4> /usr/lib/system/libsystem_c.dylib
        0x1b8a39000 -         0x1b8abc693 dyld arm64e  <5db839882ee63756bd07b8d67b1133a5> /usr/lib/dyld
        0x1ded2d000 -         0x1ded35fff GraphicsServices arm64e  <227122eb72fd3ecb9f66986addd8e048> /System/Library/PrivateFrameworks/GraphicsServices.framework/GraphicsServices
        0x1e30db000 -         0x1e3114ffb libsystem_kernel.dylib arm64e  <8d929b3bd4d639bfadbbbe59e928b332> /usr/lib/system/libsystem_kernel.dylib
        0x21a55b000 -         0x21a567ff3 libsystem_pthread.dylib arm64e  <fcc77eb0558f370392675419c4d33ae7> /usr/lib/system/libsystem_pthread.dylib
        0x25036d000 -         0x250ecefff SwiftUICore arm64e  <904df189d58e3a3b90ab83c81a6665a1> /System/Library/Frameworks/SwiftUICore.framework/SwiftUICore

EOF
```

