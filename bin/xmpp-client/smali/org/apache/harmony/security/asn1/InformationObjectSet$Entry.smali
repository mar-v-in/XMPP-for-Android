.class Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;
.super Ljava/lang/Object;
.source "InformationObjectSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/asn1/InformationObjectSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field public object:Ljava/lang/Object;

.field public oid:[I


# direct methods
.method public constructor <init>([ILjava/lang/Object;)V
    .locals 0
    .parameter "oid"
    .parameter "object"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;->oid:[I

    .line 43
    iput-object p2, p0, Lorg/apache/harmony/security/asn1/InformationObjectSet$Entry;->object:Ljava/lang/Object;

    .line 44
    return-void
.end method
