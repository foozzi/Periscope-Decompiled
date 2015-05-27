.class public Lo/ﯨ$ˊ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﯨ$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﯨ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02ca"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Lo/\ufbe8$if<TT;>;"
    }
.end annotation


# instance fields
.field private final 一:[Ljava/lang/Object;

.field private גּ:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    if-gtz p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The max pool size must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lo/ﯨ$ˊ;->一:[Ljava/lang/Object;

    .line 95
    return-void
.end method

.method private ᐝ(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 124
    const/4 v1, 0x0

    :goto_0
    iget v0, p0, Lo/ﯨ$ˊ;->גּ:I

    if-ge v1, v0, :cond_1

    .line 125
    iget-object v0, p0, Lo/ﯨ$ˊ;->一:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-ne v0, p1, :cond_0

    .line 126
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public ˏ(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1}, Lo/ﯨ$ˊ;->ᐝ(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already in the pool!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget v0, p0, Lo/ﯨ$ˊ;->גּ:I

    iget-object v1, p0, Lo/ﯨ$ˊ;->一:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 116
    iget-object v0, p0, Lo/ﯨ$ˊ;->一:[Ljava/lang/Object;

    iget v1, p0, Lo/ﯨ$ˊ;->גּ:I

    aput-object p1, v0, v1

    .line 117
    iget v0, p0, Lo/ﯨ$ˊ;->גּ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ﯨ$ˊ;->גּ:I

    .line 118
    const/4 v0, 0x1

    return v0

    .line 120
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public ᐩ()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 100
    iget v0, p0, Lo/ﯨ$ˊ;->גּ:I

    if-lez v0, :cond_0

    .line 101
    iget v0, p0, Lo/ﯨ$ˊ;->גּ:I

    add-int/lit8 v2, v0, -0x1

    .line 102
    iget-object v0, p0, Lo/ﯨ$ˊ;->一:[Ljava/lang/Object;

    aget-object v3, v0, v2

    .line 103
    iget-object v0, p0, Lo/ﯨ$ˊ;->一:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 104
    iget v0, p0, Lo/ﯨ$ˊ;->גּ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/ﯨ$ˊ;->גּ:I

    .line 105
    return-object v3

    .line 107
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
