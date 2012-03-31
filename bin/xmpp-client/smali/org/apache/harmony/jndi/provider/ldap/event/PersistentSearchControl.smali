.class public Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchControl;
.super Lorg/apache/harmony/javax/naming/ldap/BasicControl;
.source "PersistentSearchControl.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;


# static fields
.field public static final OID:Ljava/lang/String; = "2.16.840.1.113730.3.4.3"

.field private static final serialVersionUID:J = -0x748689584cfd65fL


# instance fields
.field private final changeTypes:I

.field private final changesOnly:Z

.field private final returnECs:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 47
    const/16 v0, 0xf

    invoke-direct {p0, v0, v1, v1}, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchControl;-><init>(IZZ)V

    .line 48
    return-void
.end method

.method public constructor <init>(IZZ)V
    .locals 3
    .parameter "types"
    .parameter "changesOnly"
    .parameter "returnECs"

    .prologue
    .line 52
    const-string v0, "2.16.840.1.113730.3.4.3"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/harmony/javax/naming/ldap/BasicControl;-><init>(Ljava/lang/String;Z[B)V

    .line 53
    iput-boolean p2, p0, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchControl;->changesOnly:Z

    .line 54
    iput-boolean p3, p0, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchControl;->returnECs:Z

    .line 55
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchControl;->changeTypes:I

    .line 56
    invoke-direct {p0}, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchControl;->getValue()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchControl;->value:[B

    .line 57
    return-void
.end method

.method private getValue()[B
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lorg/apache/harmony/jndi/provider/ldap/asn1/LdapASN1Constant;->PersistentSearchControl:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public encodeValues([Ljava/lang/Object;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 61
    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchControl;->changeTypes:I

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    .line 62
    const/4 v0, 0x1

    iget-boolean v1, p0, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchControl;->changesOnly:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p1, v0

    .line 63
    const/4 v0, 0x2

    iget-boolean v1, p0, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchControl;->returnECs:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p1, v0

    .line 65
    return-void
.end method

.method public getChangeTypes()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchControl;->changeTypes:I

    return v0
.end method

.method public isChangesOnly()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchControl;->changesOnly:Z

    return v0
.end method

.method public isReturnECs()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/apache/harmony/jndi/provider/ldap/event/PersistentSearchControl;->returnECs:Z

    return v0
.end method
