.class Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;
.super Ljava/lang/Object;
.source "GSSCredentialImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/auth/jgss/GSSCredentialImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GSSCredentialType"
.end annotation


# instance fields
.field public final mech:Lorg/ietf/jgss/Oid;

.field public final usage:I


# direct methods
.method public constructor <init>(Lorg/ietf/jgss/Oid;I)V
    .locals 0
    .parameter "mech"
    .parameter "usage"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;->mech:Lorg/ietf/jgss/Oid;

    .line 38
    iput p2, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;->usage:I

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 43
    instance-of v2, p1, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;

    if-nez v2, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 46
    check-cast v0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;

    .line 47
    .local v0, otherType:Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;
    iget-object v2, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;->mech:Lorg/ietf/jgss/Oid;

    iget-object v3, v0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;->mech:Lorg/ietf/jgss/Oid;

    invoke-virtual {v2, v3}, Lorg/ietf/jgss/Oid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;->usage:I

    iget v3, v0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;->usage:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;->mech:Lorg/ietf/jgss/Oid;

    invoke-virtual {v0}, Lorg/ietf/jgss/Oid;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/apache/harmony/auth/jgss/GSSCredentialImpl$GSSCredentialType;->usage:I

    add-int/2addr v0, v1

    return v0
.end method
