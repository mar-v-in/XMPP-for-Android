.class public Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;
.super Ljava/lang/Object;
.source "QueueDetails.java"

# interfaces
.implements Lorg/jivesoftware/smack/packet/PacketExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails$Provider;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyyMMdd\'T\'HH:mm:ss"

.field public static final ELEMENT_NAME:Ljava/lang/String; = "notify-queue-details"

.field public static final NAMESPACE:Ljava/lang/String; = "http://jabber.org/protocol/workgroup"


# instance fields
.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field private final users:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/QueueUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 112
    const-string v1, "yyyyMMdd\'T\'HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 123
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;->users:Ljava/util/Set;

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    invoke-direct {p0}, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;Lorg/jivesoftware/smackx/workgroup/QueueUser;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;->addUser(Lorg/jivesoftware/smackx/workgroup/QueueUser;)V

    return-void
.end method

.method private addUser(Lorg/jivesoftware/smackx/workgroup/QueueUser;)V
    .locals 2
    .parameter "user"

    .prologue
    .line 133
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;->users:Ljava/util/Set;

    monitor-enter v1

    .line 134
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;->users:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    monitor-exit v1

    .line 136
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getElementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const-string v0, "notify-queue-details"

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-string v0, "http://jabber.org/protocol/workgroup"

    return-object v0
.end method

.method public getUserCount()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;->users:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getUsers()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/QueueUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v1, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;->users:Ljava/util/Set;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;->users:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v6, "<"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "notify-queue-details"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " xmlns=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 174
    const-string v7, "http://jabber.org/protocol/workgroup"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v7, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;->users:Ljava/util/Set;

    monitor-enter v7

    .line 177
    :try_start_0
    iget-object v6, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;->users:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 176
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    const-string v6, "</"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "notify-queue-details"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 177
    :cond_0
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/workgroup/QueueUser;

    .line 178
    .local v2, queueUser:Lorg/jivesoftware/smackx/workgroup/QueueUser;
    move-object v5, v2

    .line 179
    .local v5, user:Lorg/jivesoftware/smackx/workgroup/QueueUser;
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/workgroup/QueueUser;->getQueuePosition()I

    move-result v1

    .line 180
    .local v1, position:I
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/workgroup/QueueUser;->getEstimatedRemainingTime()I

    move-result v3

    .line 181
    .local v3, timeRemaining:I
    invoke-virtual {v5}, Lorg/jivesoftware/smackx/workgroup/QueueUser;->getQueueJoinTimestamp()Ljava/util/Date;

    move-result-object v4

    .line 183
    .local v4, timestamp:Ljava/util/Date;
    const-string v8, "<user jid=\""

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/workgroup/QueueUser;->getUserID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 184
    const-string v9, "\">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    if-eq v1, v10, :cond_1

    .line 187
    const-string v8, "<position>"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 188
    const-string v9, "</position>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_1
    if-eq v3, v10, :cond_2

    .line 192
    const-string v8, "<time>"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 193
    const-string v9, "</time>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_2
    if-eqz v4, :cond_3

    .line 197
    const-string v8, "<join-time>"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget-object v8, p0, Lorg/jivesoftware/smackx/workgroup/packet/QueueDetails;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v8, "</join-time>"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_3
    const-string v8, "</user>"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 176
    .end local v1           #position:I
    .end local v2           #queueUser:Lorg/jivesoftware/smackx/workgroup/QueueUser;
    .end local v3           #timeRemaining:I
    .end local v4           #timestamp:Ljava/util/Date;
    .end local v5           #user:Lorg/jivesoftware/smackx/workgroup/QueueUser;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method
