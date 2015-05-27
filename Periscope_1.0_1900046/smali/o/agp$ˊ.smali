.class Lo/agp$ˊ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/agp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02ca"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/Comparator<Lo/ang;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 317
    move-object v0, p1

    check-cast v0, Lo/ang;

    move-object v1, p2

    check-cast v1, Lo/ang;

    invoke-virtual {p0, v0, v1}, Lo/agp$ˊ;->ˊ(Lo/ang;Lo/ang;)I

    move-result v0

    return v0
.end method

.method public ˊ(Lo/ang;Lo/ang;)I
    .locals 4

    .line 320
    invoke-virtual {p1}, Lo/ang;->BT()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Lo/ang;->BT()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v3

    .line 321
    if-nez v3, :cond_0

    .line 322
    invoke-virtual {p1}, Lo/ang;->BU()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2}, Lo/ang;->BU()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0

    .line 324
    :cond_0
    return v3
.end method
