.class Lorg/jivesoftware/smackx/jingle/JingleSession$2;
.super Ljava/lang/Object;
.source "JingleSession.java"

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/jingle/JingleSession;->installConnectionListeners(Lorg/jivesoftware/smack/Connection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/jingle/JingleSession;

.field private final synthetic val$connection:Lorg/jivesoftware/smack/Connection;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smack/Connection;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession$2;->this$0:Lorg/jivesoftware/smackx/jingle/JingleSession;

    iput-object p2, p0, Lorg/jivesoftware/smackx/jingle/JingleSession$2;->val$connection:Lorg/jivesoftware/smack/Connection;

    .line 602
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectionClosed()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession$2;->this$0:Lorg/jivesoftware/smackx/jingle/JingleSession;

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession$2;->val$connection:Lorg/jivesoftware/smack/Connection;

    #calls: Lorg/jivesoftware/smackx/jingle/JingleSession;->unregisterInstanceFor(Lorg/jivesoftware/smack/Connection;)V
    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->access$0(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smack/Connection;)V

    .line 606
    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 610
    iget-object v0, p0, Lorg/jivesoftware/smackx/jingle/JingleSession$2;->this$0:Lorg/jivesoftware/smackx/jingle/JingleSession;

    iget-object v1, p0, Lorg/jivesoftware/smackx/jingle/JingleSession$2;->val$connection:Lorg/jivesoftware/smack/Connection;

    #calls: Lorg/jivesoftware/smackx/jingle/JingleSession;->unregisterInstanceFor(Lorg/jivesoftware/smack/Connection;)V
    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/jingle/JingleSession;->access$0(Lorg/jivesoftware/smackx/jingle/JingleSession;Lorg/jivesoftware/smack/Connection;)V

    .line 611
    return-void
.end method

.method public reconnectingIn(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 615
    return-void
.end method

.method public reconnectionFailed(Ljava/lang/Exception;)V
    .locals 0
    .parameter "exception"

    .prologue
    .line 619
    return-void
.end method

.method public reconnectionSuccessful()V
    .locals 0

    .prologue
    .line 623
    return-void
.end method
