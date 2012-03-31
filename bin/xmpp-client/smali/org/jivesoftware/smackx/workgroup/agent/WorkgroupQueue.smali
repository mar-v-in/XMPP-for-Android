.class public Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;
.super Ljava/lang/Object;
.source "WorkgroupQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;
    }
.end annotation


# instance fields
.field private averageWaitTime:I

.field private currentChats:I

.field private maxChats:I

.field private final name:Ljava/lang/String;

.field private oldestEntry:Ljava/util/Date;

.field private status:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

.field private users:Ljava/util/Set;
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
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    sget-object v0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;->CLOSED:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->status:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->averageWaitTime:I

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->oldestEntry:Ljava/util/Date;

    .line 111
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->users:Ljava/util/Set;

    .line 112
    iput v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->maxChats:I

    .line 114
    iput v1, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->currentChats:I

    .line 123
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->name:Ljava/lang/String;

    .line 124
    return-void
.end method


# virtual methods
.method public getAverageWaitTime()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->averageWaitTime:I

    return v0
.end method

.method public getCurrentChats()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->currentChats:I

    return v0
.end method

.method public getMaxChats()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->maxChats:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOldestEntry()Ljava/util/Date;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->oldestEntry:Ljava/util/Date;

    return-object v0
.end method

.method public getStatus()Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->status:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    return-object v0
.end method

.method public getUserCount()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->users:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x0

    .line 193
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->users:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getUsers()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/QueueUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->users:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 205
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 207
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->users:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method setAverageWaitTime(I)V
    .locals 0
    .parameter "averageTime"

    .prologue
    .line 211
    iput p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->averageWaitTime:I

    .line 212
    return-void
.end method

.method setCurrentChats(I)V
    .locals 0
    .parameter "currentChats"

    .prologue
    .line 215
    iput p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->currentChats:I

    .line 216
    return-void
.end method

.method setMaxChats(I)V
    .locals 0
    .parameter "maxChats"

    .prologue
    .line 219
    iput p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->maxChats:I

    .line 220
    return-void
.end method

.method setOldestEntry(Ljava/util/Date;)V
    .locals 0
    .parameter "oldestEntry"

    .prologue
    .line 223
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->oldestEntry:Ljava/util/Date;

    .line 224
    return-void
.end method

.method setStatus(Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;)V
    .locals 0
    .parameter "status"

    .prologue
    .line 227
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->status:Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue$Status;

    .line 228
    return-void
.end method

.method setUsers(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/jivesoftware/smackx/workgroup/QueueUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, users:Ljava/util/Set;,"Ljava/util/Set<Lorg/jivesoftware/smackx/workgroup/QueueUser;>;"
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/agent/WorkgroupQueue;->users:Ljava/util/Set;

    .line 232
    return-void
.end method
