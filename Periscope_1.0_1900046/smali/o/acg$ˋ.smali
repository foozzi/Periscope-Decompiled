.class Lo/acg$ˋ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/acg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u02cb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/Comparator<Lo/acb;>;"
    }
.end annotation


# instance fields
.field final synthetic bxG:Lo/acg;


# direct methods
.method constructor <init>(Lo/acg;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lo/acg$ˋ;->bxG:Lo/acg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 214
    move-object v0, p1

    check-cast v0, Lo/acb;

    move-object v1, p2

    check-cast v1, Lo/acb;

    invoke-virtual {p0, v0, v1}, Lo/acg$ˋ;->ˊ(Lo/acb;Lo/acb;)I

    move-result v0

    return v0
.end method

.method public ˊ(Lo/acb;Lo/acb;)I
    .locals 4

    .line 217
    iget-wide v0, p1, Lo/acb;->bxs:J

    iget-wide v2, p2, Lo/acb;->bxs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 218
    const/4 v0, -0x1

    return v0

    .line 220
    :cond_0
    iget-wide v0, p1, Lo/acb;->bxs:J

    iget-wide v2, p2, Lo/acb;->bxs:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 221
    const/4 v0, 0x1

    return v0

    .line 223
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
