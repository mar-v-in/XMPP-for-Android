.class public Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;
.super Ljava/lang/Object;
.source "ASN1ChoiceWrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChosenValue"
.end annotation


# instance fields
.field private final index:I

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .parameter "index"
    .parameter "value"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;->index:I

    .line 46
    iput-object p2, p0, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;->value:Ljava/lang/Object;

    .line 47
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;->index:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/harmony/jndi/provider/ldap/asn1/ASN1ChoiceWrap$ChosenValue;->value:Ljava/lang/Object;

    return-object v0
.end method
