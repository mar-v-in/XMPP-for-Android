.class Lorg/jivesoftware/smackx/ChatStateManager$IncomingMessageInterceptor;
.super Ljava/lang/Object;
.source "ChatStateManager.java"

# interfaces
.implements Lorg/jivesoftware/smack/ChatManagerListener;
.implements Lorg/jivesoftware/smack/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smackx/ChatStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IncomingMessageInterceptor"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/ChatStateManager;


# direct methods
.method private constructor <init>(Lorg/jivesoftware/smackx/ChatStateManager;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lorg/jivesoftware/smackx/ChatStateManager$IncomingMessageInterceptor;->this$0:Lorg/jivesoftware/smackx/ChatStateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/ChatStateManager;Lorg/jivesoftware/smackx/ChatStateManager$IncomingMessageInterceptor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/ChatStateManager$IncomingMessageInterceptor;-><init>(Lorg/jivesoftware/smackx/ChatStateManager;)V

    return-void
.end method


# virtual methods
.method public chatCreated(Lorg/jivesoftware/smack/Chat;Z)V
    .locals 0
    .parameter "chat"
    .parameter "createdLocally"

    .prologue
    .line 64
    invoke-virtual {p1, p0}, Lorg/jivesoftware/smack/Chat;->addMessageListener(Lorg/jivesoftware/smack/MessageListener;)V

    .line 65
    return-void
.end method

.method public processMessage(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 4
    .parameter "chat"
    .parameter "message"

    .prologue
    .line 69
    .line 70
    const-string v3, "http://jabber.org/protocol/chatstates"

    invoke-virtual {p2, v3}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    .line 71
    .local v1, extension:Lorg/jivesoftware/smack/packet/PacketExtension;
    if-nez v1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 77
    :cond_0
    :try_start_0
    invoke-interface {v1}, Lorg/jivesoftware/smack/packet/PacketExtension;->getElementName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/jivesoftware/smackx/ChatState;->valueOf(Ljava/lang/String;)Lorg/jivesoftware/smackx/ChatState;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 82
    .local v2, state:Lorg/jivesoftware/smackx/ChatState;
    iget-object v3, p0, Lorg/jivesoftware/smackx/ChatStateManager$IncomingMessageInterceptor;->this$0:Lorg/jivesoftware/smackx/ChatStateManager;

    #calls: Lorg/jivesoftware/smackx/ChatStateManager;->fireNewChatState(Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smackx/ChatState;)V
    invoke-static {v3, p1, v2}, Lorg/jivesoftware/smackx/ChatStateManager;->access$0(Lorg/jivesoftware/smackx/ChatStateManager;Lorg/jivesoftware/smack/Chat;Lorg/jivesoftware/smackx/ChatState;)V

    goto :goto_0

    .line 78
    .end local v2           #state:Lorg/jivesoftware/smackx/ChatState;
    :catch_0
    move-exception v0

    .line 79
    .local v0, ex:Ljava/lang/Exception;
    goto :goto_0
.end method
