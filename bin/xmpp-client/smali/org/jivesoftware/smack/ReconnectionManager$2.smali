.class Lorg/jivesoftware/smack/ReconnectionManager$2;
.super Ljava/lang/Thread;
.source "ReconnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smack/ReconnectionManager;->reconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private attempts:I

.field final synthetic this$0:Lorg/jivesoftware/smack/ReconnectionManager;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smack/ReconnectionManager;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    .line 144
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->attempts:I

    return-void
.end method

.method private timeDelay()I
    .locals 2

    .prologue
    .line 207
    iget v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->attempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->attempts:I

    .line 208
    iget v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->attempts:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    #getter for: Lorg/jivesoftware/smack/ReconnectionManager;->randomBase:I
    invoke-static {v0}, Lorg/jivesoftware/smack/ReconnectionManager;->access$3(Lorg/jivesoftware/smack/ReconnectionManager;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x5

    .line 216
    :goto_0
    return v0

    .line 212
    :cond_0
    iget v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->attempts:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_1

    .line 213
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    #getter for: Lorg/jivesoftware/smack/ReconnectionManager;->randomBase:I
    invoke-static {v0}, Lorg/jivesoftware/smack/ReconnectionManager;->access$3(Lorg/jivesoftware/smack/ReconnectionManager;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    #getter for: Lorg/jivesoftware/smack/ReconnectionManager;->randomBase:I
    invoke-static {v0}, Lorg/jivesoftware/smack/ReconnectionManager;->access$3(Lorg/jivesoftware/smack/ReconnectionManager;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 161
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    #calls: Lorg/jivesoftware/smack/ReconnectionManager;->isReconnectionAllowed()Z
    invoke-static {v3}, Lorg/jivesoftware/smack/ReconnectionManager;->access$1(Lorg/jivesoftware/smack/ReconnectionManager;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 197
    return-void

    .line 164
    :cond_1
    invoke-direct {p0}, Lorg/jivesoftware/smack/ReconnectionManager$2;->timeDelay()I

    move-result v2

    .line 170
    .local v2, remainingSeconds:I
    :goto_1
    iget-object v3, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    #calls: Lorg/jivesoftware/smack/ReconnectionManager;->isReconnectionAllowed()Z
    invoke-static {v3}, Lorg/jivesoftware/smack/ReconnectionManager;->access$1(Lorg/jivesoftware/smack/ReconnectionManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 171
    if-gtz v2, :cond_3

    .line 187
    :cond_2
    :try_start_0
    iget-object v3, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    .line 188
    #calls: Lorg/jivesoftware/smack/ReconnectionManager;->isReconnectionAllowed()Z
    invoke-static {v3}, Lorg/jivesoftware/smack/ReconnectionManager;->access$1(Lorg/jivesoftware/smack/ReconnectionManager;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    iget-object v3, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    #getter for: Lorg/jivesoftware/smack/ReconnectionManager;->connection:Lorg/jivesoftware/smack/Connection;
    invoke-static {v3}, Lorg/jivesoftware/smack/ReconnectionManager;->access$2(Lorg/jivesoftware/smack/ReconnectionManager;)Lorg/jivesoftware/smack/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smack/Connection;->connect()V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Lorg/jivesoftware/smack/XMPPException;
    iget-object v3, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    .line 194
    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/ReconnectionManager;->notifyReconnectionFailed(Ljava/lang/Exception;)V

    goto :goto_0

    .line 173
    .end local v0           #e:Lorg/jivesoftware/smack/XMPPException;
    :cond_3
    const-wide/16 v3, 0x3e8

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 174
    add-int/lit8 v2, v2, -0x1

    .line 175
    iget-object v3, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    .line 176
    invoke-virtual {v3, v2}, Lorg/jivesoftware/smack/ReconnectionManager;->notifyAttemptToReconnectIn(I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 177
    :catch_1
    move-exception v1

    .line 178
    .local v1, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 180
    iget-object v3, p0, Lorg/jivesoftware/smack/ReconnectionManager$2;->this$0:Lorg/jivesoftware/smack/ReconnectionManager;

    .line 181
    invoke-virtual {v3, v1}, Lorg/jivesoftware/smack/ReconnectionManager;->notifyReconnectionFailed(Ljava/lang/Exception;)V

    goto :goto_1
.end method
