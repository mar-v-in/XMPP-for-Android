.class public Lorg/apache/harmony/auth/jgss/kerberos/toolbox/KerberosApplicationRequest;
.super Ljava/lang/Object;
.source "KerberosApplicationRequest.java"


# instance fields
.field private final options:[Z

.field private final seqNum:J

.field private final sessionKey:Ljavax/crypto/SecretKey;

.field private final tgs:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;


# direct methods
.method public constructor <init>(J[ZLorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;Ljavax/crypto/SecretKey;)V
    .locals 0
    .parameter "seqNum"
    .parameter "options"
    .parameter "tgs"
    .parameter "sessionKey"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lorg/apache/harmony/auth/jgss/kerberos/toolbox/KerberosApplicationRequest;->seqNum:J

    .line 39
    iput-object p3, p0, Lorg/apache/harmony/auth/jgss/kerberos/toolbox/KerberosApplicationRequest;->options:[Z

    .line 40
    iput-object p4, p0, Lorg/apache/harmony/auth/jgss/kerberos/toolbox/KerberosApplicationRequest;->tgs:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;

    .line 41
    iput-object p5, p0, Lorg/apache/harmony/auth/jgss/kerberos/toolbox/KerberosApplicationRequest;->sessionKey:Ljavax/crypto/SecretKey;

    .line 42
    return-void
.end method


# virtual methods
.method public getOptions()[Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/harmony/auth/jgss/kerberos/toolbox/KerberosApplicationRequest;->options:[Z

    return-object v0
.end method

.method public getSeqNum()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lorg/apache/harmony/auth/jgss/kerberos/toolbox/KerberosApplicationRequest;->seqNum:J

    return-wide v0
.end method

.method public getSessionKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/harmony/auth/jgss/kerberos/toolbox/KerberosApplicationRequest;->sessionKey:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method public getTGS()Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/harmony/auth/jgss/kerberos/toolbox/KerberosApplicationRequest;->tgs:Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;

    return-object v0
.end method
