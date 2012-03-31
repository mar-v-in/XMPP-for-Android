.class Lorg/jivesoftware/smack/PacketReader$2;
.super Ljava/lang/Object;
.source "PacketReader.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/PacketReader;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smack/PacketReader;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/PacketReader;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smack/PacketReader$2;->this$0:Lorg/jivesoftware/smack/PacketReader;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .parameter "runnable"

    .prologue
    .line 123
    new-instance v0, Ljava/lang/Thread;

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Smack Listener Processor ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    iget-object v2, p0, Lorg/jivesoftware/smack/PacketReader$2;->this$0:Lorg/jivesoftware/smack/PacketReader;

    #getter for: Lorg/jivesoftware/smack/PacketReader;->connection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v2}, Lorg/jivesoftware/smack/PacketReader;->access$0(Lorg/jivesoftware/smack/PacketReader;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    iget v2, v2, Lorg/jivesoftware/smack/XMPPConnection;->connectionCounterValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 126
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 127
    .local v0, thread:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 128
    return-object v0
.end method
