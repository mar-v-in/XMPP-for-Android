.class public Lorg/jivesoftware/smackx/workgroup/QueueUser;
.super Ljava/lang/Object;
.source "QueueUser.java"


# instance fields
.field private final estimatedTime:I

.field private final joinDate:Ljava/util/Date;

.field private final queuePosition:I

.field private final userID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/util/Date;)V
    .locals 0
    .parameter "uid"
    .parameter "position"
    .parameter "time"
    .parameter "joinedAt"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/jivesoftware/smackx/workgroup/QueueUser;->userID:Ljava/lang/String;

    .line 54
    iput p2, p0, Lorg/jivesoftware/smackx/workgroup/QueueUser;->queuePosition:I

    .line 55
    iput p3, p0, Lorg/jivesoftware/smackx/workgroup/QueueUser;->estimatedTime:I

    .line 56
    iput-object p4, p0, Lorg/jivesoftware/smackx/workgroup/QueueUser;->joinDate:Ljava/util/Date;

    .line 57
    return-void
.end method


# virtual methods
.method public getEstimatedRemainingTime()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lorg/jivesoftware/smackx/workgroup/QueueUser;->estimatedTime:I

    return v0
.end method

.method public getQueueJoinTimestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/QueueUser;->joinDate:Ljava/util/Date;

    return-object v0
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/jivesoftware/smackx/workgroup/QueueUser;->queuePosition:I

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/jivesoftware/smackx/workgroup/QueueUser;->userID:Ljava/lang/String;

    return-object v0
.end method
