.class Lxmpp/client/service/Service$1;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxmpp/client/service/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lxmpp/client/service/Service;


# direct methods
.method constructor <init>(Lxmpp/client/service/Service;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lxmpp/client/service/Service$1;->this$0:Lxmpp/client/service/Service;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionClosed()V
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lxmpp/client/service/Service;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connectionClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 64
    invoke-static {}, Lxmpp/client/service/Service;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connectionClosedOnError"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    return-void
.end method

.method public reconnectingIn(I)V
    .locals 3
    .parameter "t"

    .prologue
    .line 69
    invoke-static {}, Lxmpp/client/service/Service;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reconnectingIn: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public reconnectionFailed(Ljava/lang/Exception;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 74
    invoke-static {}, Lxmpp/client/service/Service;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reconnectionFailed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    return-void
.end method

.method public reconnectionSuccessful()V
    .locals 2

    .prologue
    .line 79
    invoke-static {}, Lxmpp/client/service/Service;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reconnectionSuccessful"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method
