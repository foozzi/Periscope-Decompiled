.class final Lo/ค;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/Comparator<Lo/\u09f0$if;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 37
    move-object v0, p1

    check-cast v0, Lo/ৰ$if;

    move-object v1, p2

    check-cast v1, Lo/ৰ$if;

    invoke-virtual {p0, v0, v1}, Lo/ค;->ˊ(Lo/ৰ$if;Lo/ৰ$if;)I

    move-result v0

    return v0
.end method

.method public ˊ(Lo/ৰ$if;Lo/ৰ$if;)I
    .locals 2

    .line 40
    iget v0, p1, Lo/ৰ$if;->index:I

    iget v1, p2, Lo/ৰ$if;->index:I

    sub-int/2addr v0, v1

    return v0
.end method
