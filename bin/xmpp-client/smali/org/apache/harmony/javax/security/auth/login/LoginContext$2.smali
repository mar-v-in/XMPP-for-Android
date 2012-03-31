.class Lorg/apache/harmony/javax/security/auth/login/LoginContext$2;
.super Ljava/lang/Object;
.source "LoginContext.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/javax/security/auth/login/LoginContext;->login()V
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
.field final synthetic this$0:Lorg/apache/harmony/javax/security/auth/login/LoginContext;


# direct methods
.method constructor <init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$2;->this$0:Lorg/apache/harmony/javax/security/auth/login/LoginContext;

    .line 352
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
    invoke-virtual {p0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$2;->run()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$2;->this$0:Lorg/apache/harmony/javax/security/auth/login/LoginContext;

    #calls: Lorg/apache/harmony/javax/security/auth/login/LoginContext;->loginImpl()V
    invoke-static {v0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->access$4(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)V

    .line 356
    const/4 v0, 0x0

    return-object v0
.end method
