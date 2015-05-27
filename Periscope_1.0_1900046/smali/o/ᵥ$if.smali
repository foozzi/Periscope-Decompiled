.class final Lo/ᵥ$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ᵥ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;>Ljava/lang/Object;Ljava/util/Iterator<TT;>;"
    }
.end annotation


# instance fields
.field mIndex:I

.field final ḯ:I

.field Ị:I

.field ị:Z

.field final synthetic ゝ:Lo/ᵥ;


# direct methods
.method constructor <init>(Lo/ᵥ;I)V
    .locals 1

    .line 41
    iput-object p1, p0, Lo/ᵥ$if;->ゝ:Lo/ᵥ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᵥ$if;->ị:Z

    .line 42
    iput p2, p0, Lo/ᵥ$if;->ḯ:I

    .line 43
    invoke-virtual {p1}, Lo/ᵥ;->ʴ()I

    move-result v0

    iput v0, p0, Lo/ᵥ$if;->Ị:I

    .line 44
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 48
    iget v0, p0, Lo/ᵥ$if;->mIndex:I

    iget v1, p0, Lo/ᵥ$if;->Ị:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lo/ᵥ$if;->ゝ:Lo/ᵥ;

    iget v1, p0, Lo/ᵥ$if;->mIndex:I

    iget v2, p0, Lo/ᵥ$if;->ḯ:I

    invoke-virtual {v0, v1, v2}, Lo/ᵥ;->ˏ(II)Ljava/lang/Object;

    move-result-object v3

    .line 54
    iget v0, p0, Lo/ᵥ$if;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ᵥ$if;->mIndex:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᵥ$if;->ị:Z

    .line 56
    return-object v3
.end method

.method public remove()V
    .locals 2

    .line 61
    iget-boolean v0, p0, Lo/ᵥ$if;->ị:Z

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 64
    :cond_0
    iget v0, p0, Lo/ᵥ$if;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/ᵥ$if;->mIndex:I

    .line 65
    iget v0, p0, Lo/ᵥ$if;->Ị:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/ᵥ$if;->Ị:I

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᵥ$if;->ị:Z

    .line 67
    iget-object v0, p0, Lo/ᵥ$if;->ゝ:Lo/ᵥ;

    iget v1, p0, Lo/ᵥ$if;->mIndex:I

    invoke-virtual {v0, v1}, Lo/ᵥ;->ʿ(I)V

    .line 68
    return-void
.end method
