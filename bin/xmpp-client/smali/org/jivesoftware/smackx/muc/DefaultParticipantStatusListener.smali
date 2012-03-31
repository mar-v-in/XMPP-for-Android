.class public Lorg/jivesoftware/smackx/muc/DefaultParticipantStatusListener;
.super Ljava/lang/Object;
.source "DefaultParticipantStatusListener.java"

# interfaces
.implements Lorg/jivesoftware/smackx/muc/ParticipantStatusListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adminGranted(Ljava/lang/String;)V
    .locals 0
    .parameter "participant"

    .prologue
    .line 38
    return-void
.end method

.method public adminRevoked(Ljava/lang/String;)V
    .locals 0
    .parameter "participant"

    .prologue
    .line 42
    return-void
.end method

.method public banned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "participant"
    .parameter "actor"
    .parameter "reason"

    .prologue
    .line 46
    return-void
.end method

.method public joined(Ljava/lang/String;)V
    .locals 0
    .parameter "participant"

    .prologue
    .line 50
    return-void
.end method

.method public kicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "participant"
    .parameter "actor"
    .parameter "reason"

    .prologue
    .line 54
    return-void
.end method

.method public left(Ljava/lang/String;)V
    .locals 0
    .parameter "participant"

    .prologue
    .line 58
    return-void
.end method

.method public membershipGranted(Ljava/lang/String;)V
    .locals 0
    .parameter "participant"

    .prologue
    .line 62
    return-void
.end method

.method public membershipRevoked(Ljava/lang/String;)V
    .locals 0
    .parameter "participant"

    .prologue
    .line 66
    return-void
.end method

.method public moderatorGranted(Ljava/lang/String;)V
    .locals 0
    .parameter "participant"

    .prologue
    .line 70
    return-void
.end method

.method public moderatorRevoked(Ljava/lang/String;)V
    .locals 0
    .parameter "participant"

    .prologue
    .line 74
    return-void
.end method

.method public nicknameChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "participant"
    .parameter "newNickname"

    .prologue
    .line 78
    return-void
.end method

.method public ownershipGranted(Ljava/lang/String;)V
    .locals 0
    .parameter "participant"

    .prologue
    .line 82
    return-void
.end method

.method public ownershipRevoked(Ljava/lang/String;)V
    .locals 0
    .parameter "participant"

    .prologue
    .line 86
    return-void
.end method

.method public voiceGranted(Ljava/lang/String;)V
    .locals 0
    .parameter "participant"

    .prologue
    .line 90
    return-void
.end method

.method public voiceRevoked(Ljava/lang/String;)V
    .locals 0
    .parameter "participant"

    .prologue
    .line 94
    return-void
.end method
