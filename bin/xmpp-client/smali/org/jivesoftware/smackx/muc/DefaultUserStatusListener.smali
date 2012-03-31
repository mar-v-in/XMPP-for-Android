.class public Lorg/jivesoftware/smackx/muc/DefaultUserStatusListener;
.super Ljava/lang/Object;
.source "DefaultUserStatusListener.java"

# interfaces
.implements Lorg/jivesoftware/smackx/muc/UserStatusListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adminGranted()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public adminRevoked()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public banned(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "actor"
    .parameter "reason"

    .prologue
    .line 45
    return-void
.end method

.method public kicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "actor"
    .parameter "reason"

    .prologue
    .line 49
    return-void
.end method

.method public membershipGranted()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public membershipRevoked()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public moderatorGranted()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public moderatorRevoked()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public ownershipGranted()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public ownershipRevoked()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public voiceGranted()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public voiceRevoked()V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
