.class public Lorg/apache/harmony/auth/UnixNumericUserPrincipal;
.super Ljava/lang/Object;
.source "UnixNumericUserPrincipal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/security/Principal;


# static fields
.field private static final serialVersionUID:J = -0x7335a52eb5d2332eL


# instance fields
.field private final uid:J


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Lorg/apache/harmony/auth/UnixNumericUserPrincipal;->uid:J

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "uid"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "auth.06"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/auth/UnixNumericUserPrincipal;->uid:J

    .line 57
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 66
    instance-of v1, p1, Lorg/apache/harmony/auth/UnixNumericUserPrincipal;

    if-eqz v1, :cond_0

    .line 67
    check-cast p1, Lorg/apache/harmony/auth/UnixNumericUserPrincipal;

    .end local p1
    iget-wide v1, p1, Lorg/apache/harmony/auth/UnixNumericUserPrincipal;->uid:J

    iget-wide v3, p0, Lorg/apache/harmony/auth/UnixNumericUserPrincipal;->uid:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 69
    :cond_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lorg/apache/harmony/auth/UnixNumericUserPrincipal;->uid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lorg/apache/harmony/auth/UnixNumericUserPrincipal;->uid:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 92
    iget-wide v0, p0, Lorg/apache/harmony/auth/UnixNumericUserPrincipal;->uid:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UnixNumericUserPrincipal, uid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/apache/harmony/auth/UnixNumericUserPrincipal;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
