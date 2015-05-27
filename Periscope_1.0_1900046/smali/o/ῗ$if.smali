.class public final Lo/ῗ$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ῗ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/lang/Comparable<Ljava/lang/Long;>;"
    }
.end annotation


# instance fields
.field public final tN:J

.field public final url:Ljava/lang/String;

.field public final wH:Z

.field public final yn:Z

.field public final yo:D

.field public final yp:Ljava/lang/String;

.field public final yq:Ljava/lang/String;

.field public final yr:I

.field public final ys:I


# direct methods
.method public constructor <init>(Ljava/lang/String;DZJZLjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lo/ῗ$if;->url:Ljava/lang/String;

    .line 46
    iput-wide p2, p0, Lo/ῗ$if;->yo:D

    .line 47
    iput-boolean p4, p0, Lo/ῗ$if;->yn:Z

    .line 48
    iput-wide p5, p0, Lo/ῗ$if;->tN:J

    .line 49
    iput-boolean p7, p0, Lo/ῗ$if;->wH:Z

    .line 50
    iput-object p8, p0, Lo/ῗ$if;->yp:Ljava/lang/String;

    .line 51
    iput-object p9, p0, Lo/ῗ$if;->yq:Ljava/lang/String;

    .line 52
    iput p10, p0, Lo/ῗ$if;->yr:I

    .line 53
    iput p11, p0, Lo/ῗ$if;->ys:I

    .line 54
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Long;)I
    .locals 4

    .line 58
    iget-wide v0, p0, Lo/ῗ$if;->tN:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lo/ῗ$if;->tN:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 30
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {p0, v0}, Lo/ῗ$if;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method
