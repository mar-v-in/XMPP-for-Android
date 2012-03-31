.class public abstract Lorg/jivesoftware/smackx/commands/LocalCommand;
.super Lorg/jivesoftware/smackx/commands/AdHocCommand;
.source "LocalCommand.java"


# instance fields
.field private final creationDate:J

.field private currenStage:I

.field private ownerJID:Ljava/lang/String;

.field private sessionID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/jivesoftware/smackx/commands/AdHocCommand;-><init>()V

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->creationDate:J

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->currenStage:I

    .line 72
    return-void
.end method


# virtual methods
.method decrementStage()V
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->currenStage:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->currenStage:I

    .line 81
    return-void
.end method

.method public getCreationDate()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->creationDate:J

    return-wide v0
.end method

.method public getCurrentStage()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->currenStage:I

    return v0
.end method

.method public getOwnerJID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->ownerJID:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->sessionID:Ljava/lang/String;

    return-object v0
.end method

.method public abstract hasPermission(Ljava/lang/String;)Z
.end method

.method incrementStage()V
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->currenStage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->currenStage:I

    .line 136
    return-void
.end method

.method public abstract isLastStage()Z
.end method

.method setData(Lorg/jivesoftware/smackx/packet/AdHocCommandData;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 149
    iget-object v0, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->sessionID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setSessionID(Ljava/lang/String;)V

    .line 150
    invoke-super {p0, p1}, Lorg/jivesoftware/smackx/commands/AdHocCommand;->setData(Lorg/jivesoftware/smackx/packet/AdHocCommandData;)V

    .line 151
    return-void
.end method

.method public setOwnerJID(Ljava/lang/String;)V
    .locals 0
    .parameter "ownerJID"

    .prologue
    .line 161
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->ownerJID:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 1
    .parameter "sessionID"

    .prologue
    .line 172
    iput-object p1, p0, Lorg/jivesoftware/smackx/commands/LocalCommand;->sessionID:Ljava/lang/String;

    .line 173
    invoke-virtual {p0}, Lorg/jivesoftware/smackx/commands/LocalCommand;->getData()Lorg/jivesoftware/smackx/packet/AdHocCommandData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smackx/packet/AdHocCommandData;->setSessionID(Ljava/lang/String;)V

    .line 174
    return-void
.end method
