.class Lorg/apache/harmony/jndi/provider/ldap/ModifyOp$Modification;
.super Ljava/lang/Object;
.source "ModifyOp.java"

# interfaces
.implements Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1Encodable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/jndi/provider/ldap/ModifyOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Modification"
.end annotation


# instance fields
.field attr:Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;

.field type:I


# direct methods
.method public constructor <init>(ILorg/apache/harmony/jndi/provider/ldap/LdapAttribute;)V
    .locals 0
    .parameter "type"
    .parameter "attr"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp$Modification;->type:I

    .line 38
    iput-object p2, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp$Modification;->attr:Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;

    .line 39
    return-void
.end method


# virtual methods
.method public encodeValues([Ljava/lang/Object;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 43
    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp$Modification;->type:I

    invoke-static {v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    .line 44
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/apache/harmony/jndi/provider/ldap/ModifyOp$Modification;->attr:Lorg/apache/harmony/jndi/provider/ldap/LdapAttribute;

    aput-object v1, p1, v0

    .line 45
    return-void
.end method
