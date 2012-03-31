.class public Lorg/apache/harmony/jndi/provider/ldap/LdapResult;
.super Ljava/lang/Object;
.source "LdapResult.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Decodable;


# static fields
.field public static final ADMIN_LIMIT_EXCEEDED:I = 0xb

.field public static final AFFECTS_MULTIPLE_DSAS:I = 0x47

.field public static final ALIAS_DEREFERENCING_PROBLEM:I = 0x24

.field public static final ALIAS_PROBLEM:I = 0x21

.field public static final ATTRIBUTE_OR_VALUE_EXISTS:I = 0x14

.field public static final AUTH_METHOD_NOT_SUPPORTED:I = 0x7

.field public static final BUSY:I = 0x33

.field public static final COMPARE_FALSE:I = 0x5

.field public static final COMPARE_TRUE:I = 0x6

.field public static final CONFIDENTIALITY_REQUIRED:I = 0xd

.field public static final CONSTRAINT_VIOLATION:I = 0x13

.field public static final ENTRY_ALREADY_EXISTS:I = 0x44

.field public static final INAPPROPRIATE_AUTHENTICATION:I = 0x30

.field public static final INAPPROPRIATE_MATCHING:I = 0x12

.field public static final INSUFFICIENT_ACCESS_RIGHTS:I = 0x32

.field public static final INVALID_ATTRIBUTE_SYNTAX:I = 0x15

.field public static final INVALID_CREDENTIALS:I = 0x31

.field public static final INVALID_DN_SYNTAX:I = 0x22

.field public static final LOOP_DETECT:I = 0x36

.field public static final NAMING_VIOLATION:I = 0x40

.field public static final NOT_ALLOWED_ON_NON_LEAF:I = 0x42

.field public static final NOT_ALLOWED_ON_RDN:I = 0x43

.field public static final NO_SUCH_ATTRIBUTE:I = 0x10

.field public static final NO_SUCH_OBJECT:I = 0x20

.field public static final OBJECT_CLASS_MODS_PROHIBITED:I = 0x45

.field public static final OBJECT_CLASS_VIOLATION:I = 0x41

.field public static final OPERATIONS_ERROR:I = 0x1

.field public static final OTHER:I = 0x50

.field public static final PROTOCOL_ERROR:I = 0x2

.field public static final REFERRAL:I = 0xa

.field public static final SASL_BIND_IN_PROGRESS:I = 0xe

.field public static final SIZE_LIMIT_EXCEEDED:I = 0x4

.field public static final STRONGER_AUTH_REQUIRED:I = 0x8

.field public static final SUCCESS:I = 0x0

.field public static final TIME_LIMIT_EXCEEDED:I = 0x3

.field public static final UNAVAILABLE:I = 0x34

.field public static final UNAVAILABLE_CRITICAL_EXTENSION:I = 0xc

.field public static final UNDEFINED_ATTRIBUTE_TYPE:I = 0x11

.field public static final UNWILLING_TO_PERFORM:I = 0x35


# instance fields
.field private errorMessage:Ljava/lang/String;

.field private machedDN:Ljava/lang/String;

.field private referrals:[Ljava/lang/String;

.field private resultCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeValues([Ljava/lang/Object;)V
    .locals 7
    .parameter "values"

    .prologue
    const/4 v5, 0x3

    .line 119
    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-static {v4}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->resultCode:I

    .line 120
    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-static {v4}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->machedDN:Ljava/lang/String;

    .line 121
    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-static {v4}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->errorMessage:Ljava/lang/String;

    .line 123
    aget-object v4, p1, v5

    if-eqz v4, :cond_0

    .line 124
    aget-object v3, p1, v5

    check-cast v3, Ljava/util/Collection;

    .line 125
    .local v3, list:Ljava/util/Collection;,"Ljava/util/Collection<[B>;"
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->referrals:[Ljava/lang/String;

    .line 127
    const/4 v1, 0x0

    .line 128
    .local v1, index:I
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 133
    .end local v1           #index:I
    .end local v3           #list:Ljava/util/Collection;,"Ljava/util/Collection<[B>;"
    :cond_0
    return-void

    .line 128
    .restart local v1       #index:I
    .restart local v3       #list:Ljava/util/Collection;,"Ljava/util/Collection<[B>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 129
    .local v0, bytes:[B
    iget-object v5, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->referrals:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    invoke-static {v0}, Lorg/apache/harmony/jndi/provider/ldap/asn1/Utils;->getString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMachedDN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->machedDN:Ljava/lang/String;

    return-object v0
.end method

.method public getReferrals()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->referrals:[Ljava/lang/String;

    return-object v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/LdapResult;->resultCode:I

    return v0
.end method
