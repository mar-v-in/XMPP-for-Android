.class public Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher$TripletContainer;
.super Ljava/lang/Object;
.source "ListenerEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TripletContainer"
.end annotation


# instance fields
.field protected listenerInstance:Ljava/lang/Object;

.field protected listenerMethod:Ljava/lang/reflect/Method;

.field protected methodArguments:[Ljava/lang/Object;

.field final synthetic this$0:Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher;


# direct methods
.method protected constructor <init>(Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "inst"
    .parameter "meth"
    .parameter "args"

    .prologue
    .line 46
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher$TripletContainer;->this$0:Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p2, p0, Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher$TripletContainer;->listenerInstance:Ljava/lang/Object;

    .line 50
    iput-object p3, p0, Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher$TripletContainer;->listenerMethod:Ljava/lang/reflect/Method;

    .line 51
    iput-object p4, p0, Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher$TripletContainer;->methodArguments:[Ljava/lang/Object;

    .line 52
    return-void
.end method


# virtual methods
.method protected getListenerInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher$TripletContainer;->listenerInstance:Ljava/lang/Object;

    return-object v0
.end method

.method protected getListenerMethod()Ljava/lang/reflect/Method;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher$TripletContainer;->listenerMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method protected getMethodArguments()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/util/ListenerEventDispatcher$TripletContainer;->methodArguments:[Ljava/lang/Object;

    return-object v0
.end method
