.class public Lorg/apache/harmony/auth/UnixNumericGroupPrincipal;
.super Ljava/lang/Object;
.source "UnixNumericGroupPrincipal.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/security/Principal;


# static fields
.field private static final serialVersionUID:J = -0x76e27310e7b3d6fL


# instance fields
.field private final gid:J

.field private gname:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Z)V
    .locals 0
    .parameter "gid"
    .parameter "gname"
    .parameter "primary"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-wide p1, p0, Lorg/apache/harmony/auth/UnixNumericGroupPrincipal;->gid:J

    .line 61
    iput-object p3, p0, Lorg/apache/harmony/auth/UnixNumericGroupPrincipal;->gname:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0
    .parameter "gid"
    .parameter "primary"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-wide p1, p0, Lorg/apache/harmony/auth/UnixNumericGroupPrincipal;->gid:J

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .parameter "gid"
    .parameter "primary"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    if-nez p1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "auth.07"

    invoke-static {v1}, Lorg/apache/harmony/auth/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/harmony/auth/UnixNumericGroupPrincipal;->gid:J

    .line 78
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .line 87
    instance-of v1, p1, Lorg/apache/harmony/auth/UnixNumericGroupPrincipal;

    if-eqz v1, :cond_0

    .line 88
    check-cast p1, Lorg/apache/harmony/auth/UnixNumericGroupPrincipal;

    .end local p1
    iget-wide v1, p1, Lorg/apache/harmony/auth/UnixNumericGroupPrincipal;->gid:J

    iget-wide v3, p0, Lorg/apache/harmony/auth/UnixNumericGroupPrincipal;->gid:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 90
    :cond_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lorg/apache/harmony/auth/UnixNumericGroupPrincipal;->gid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lorg/apache/harmony/auth/UnixNumericGroupPrincipal;->gname:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lorg/apache/harmony/auth/UnixNumericGroupPrincipal;->gid:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lorg/apache/harmony/auth/UnixNumericGroupPrincipal;->gid:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/harmony/auth/UnixNumericGroupPrincipal;->gname:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UnixNumericGroupPrincipal, gid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/apache/harmony/auth/UnixNumericGroupPrincipal;->gid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UnixNumericGroupPrincipal, gid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/apache/harmony/auth/UnixNumericGroupPrincipal;->gid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/auth/UnixNumericGroupPrincipal;->gname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
