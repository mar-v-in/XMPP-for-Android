.class public Lorg/apache/harmony/auth/jgss/kerberos/KerberosProvider;
.super Ljava/security/Provider;
.source "KerberosProvider.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;DLjava/lang/String;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 31
    const-string v0, "GssApiMechanism.1.2.840.113554.1.2.2"

    .line 32
    const-string v1, "org.apache.harmony.auth.jgss.kerberos.KerberosSpiImpl"

    .line 31
    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/auth/jgss/kerberos/KerberosProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method
