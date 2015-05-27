.class Lo/abv$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/abv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Ljava/util/Comparator<Lo/ant;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ˋ(Lo/ant;Lo/ant;)I
    .locals 3

    .line 119
    invoke-virtual {p1}, Lo/ant;->Ci()Ljava/math/BigInteger;

    move-result-object v1

    .line 120
    invoke-virtual {p2}, Lo/ant;->Ci()Ljava/math/BigInteger;

    move-result-object v2

    .line 121
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    .line 122
    const/4 v0, 0x0

    return v0

    .line 123
    :cond_0
    if-nez v1, :cond_1

    .line 124
    const/4 v0, -0x1

    return v0

    .line 125
    :cond_1
    if-nez v2, :cond_2

    .line 126
    const/4 v0, 0x1

    return v0

    .line 128
    :cond_2
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 112
    move-object v0, p1

    check-cast v0, Lo/ant;

    move-object v1, p2

    check-cast v1, Lo/ant;

    invoke-virtual {p0, v0, v1}, Lo/abv$if;->ˊ(Lo/ant;Lo/ant;)I

    move-result v0

    return v0
.end method

.method public ˊ(Lo/ant;Lo/ant;)I
    .locals 1

    .line 115
    invoke-direct {p0, p1, p2}, Lo/abv$if;->ˋ(Lo/ant;Lo/ant;)I

    move-result v0

    return v0
.end method
