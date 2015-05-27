.class Lo/acg$ˊ;
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
    name = "\u02ca"
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

    .line 227
    iput-object p1, p0, Lo/acg$ˊ;->bxG:Lo/acg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 227
    move-object v0, p1

    check-cast v0, Lo/acb;

    move-object v1, p2

    check-cast v1, Lo/acb;

    invoke-virtual {p0, v0, v1}, Lo/acg$ˊ;->ˊ(Lo/acb;Lo/acb;)I

    move-result v0

    return v0
.end method

.method public ˊ(Lo/acb;Lo/acb;)I
    .locals 2

    .line 230
    iget-object v0, p1, Lo/acb;->bxr:Lo/ant;

    invoke-virtual {v0}, Lo/ant;->Ci()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p2, Lo/acb;->bxr:Lo/ant;

    invoke-virtual {v1}, Lo/ant;->Ci()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method
