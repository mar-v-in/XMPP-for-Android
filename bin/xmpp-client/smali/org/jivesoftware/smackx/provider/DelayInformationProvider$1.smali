.class Lorg/jivesoftware/smackx/provider/DelayInformationProvider$1;
.super Ljava/lang/Object;
.source "DelayInformationProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jivesoftware/smackx/provider/DelayInformationProvider;->determineNearestDate(Ljava/util/Calendar;Ljava/util/List;)Ljava/util/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jivesoftware/smackx/provider/DelayInformationProvider;

.field private final synthetic val$now:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Lorg/jivesoftware/smackx/provider/DelayInformationProvider;Ljava/util/Calendar;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider$1;->this$0:Lorg/jivesoftware/smackx/provider/DelayInformationProvider;

    iput-object p2, p0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider$1;->val$now:Ljava/util/Calendar;

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/Calendar;

    check-cast p2, Ljava/util/Calendar;

    invoke-virtual {p0, p1, p2}, Lorg/jivesoftware/smackx/provider/DelayInformationProvider$1;->compare(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/util/Calendar;Ljava/util/Calendar;)I
    .locals 6
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 99
    new-instance v0, Ljava/lang/Long;

    iget-object v2, p0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider$1;->val$now:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 100
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 99
    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 101
    .local v0, diff1:Ljava/lang/Long;
    new-instance v1, Ljava/lang/Long;

    iget-object v2, p0, Lorg/jivesoftware/smackx/provider/DelayInformationProvider$1;->val$now:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 102
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 101
    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 103
    .local v1, diff2:Ljava/lang/Long;
    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v2

    return v2
.end method
