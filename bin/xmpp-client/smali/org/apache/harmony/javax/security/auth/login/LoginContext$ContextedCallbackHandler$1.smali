.class Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler$1;
.super Ljava/lang/Object;
.source "LoginContext.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;->handle([Ljavax/security/auth/callback/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;

.field private final synthetic val$callbacks:[Ljavax/security/auth/callback/Callback;


# direct methods
.method constructor <init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;[Ljavax/security/auth/callback/Callback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler$1;->this$1:Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;

    iput-object p2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler$1;->val$callbacks:[Ljavax/security/auth/callback/Callback;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler$1;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/security/auth/callback/UnsupportedCallbackException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler$1;->this$1:Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;

    #getter for: Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;->hiddenHandlerRef:Ljavax/security/auth/callback/CallbackHandler;
    invoke-static {v0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;->access$0(Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;)Ljavax/security/auth/callback/CallbackHandler;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler$1;->val$callbacks:[Ljavax/security/auth/callback/Callback;

    invoke-interface {v0, v1}, Ljavax/security/auth/callback/CallbackHandler;->handle([Ljavax/security/auth/callback/Callback;)V

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method
