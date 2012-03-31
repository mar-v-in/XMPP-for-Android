.class public interface abstract Lorg/apache/harmony/auth/jgss/kerberos/toolbox/KerberosToolboxSpi;
.super Ljava/lang/Object;
.source "KerberosToolboxSpi.java"


# virtual methods
.method public abstract decodeApplicationRequest([B)Lorg/apache/harmony/auth/jgss/kerberos/toolbox/KerberosApplicationRequest;
.end method

.method public abstract encodeApplicationRequest(Lorg/apache/harmony/auth/jgss/kerberos/toolbox/KerberosApplicationRequest;)[B
.end method

.method public abstract getTGS(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;)Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
.end method

.method public abstract getTGT(Ljava/lang/String;[C)Lorg/apache/harmony/javax/security/auth/kerberos/KerberosTicket;
.end method
