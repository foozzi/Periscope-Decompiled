.class Lo/ᖮ;
.super Lo/ᵥ;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/\u1d65<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic ᓑ:Lo/ᒢ;


# direct methods
.method constructor <init>(Lo/ᒢ;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lo/ᖮ;->ᓑ:Lo/ᒢ;

    invoke-direct {p0}, Lo/ᵥ;-><init>()V

    return-void
.end method


# virtual methods
.method protected ʴ()I
    .locals 1

    .line 76
    iget-object v0, p0, Lo/ᖮ;->ᓑ:Lo/ᒢ;

    iget v0, v0, Lo/ᒢ;->Ị:I

    return v0
.end method

.method protected ʿ(I)V
    .locals 1

    .line 111
    iget-object v0, p0, Lo/ᖮ;->ᓑ:Lo/ᒢ;

    invoke-virtual {v0, p1}, Lo/ᒢ;->removeAt(I)Ljava/lang/Object;

    .line 112
    return-void
.end method

.method protected ˆ()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/Map<TK;TV;>;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lo/ᖮ;->ᓑ:Lo/ᒢ;

    return-object v0
.end method

.method protected ˇ()V
    .locals 1

    .line 116
    iget-object v0, p0, Lo/ᖮ;->ᓑ:Lo/ᒢ;

    invoke-virtual {v0}, Lo/ᒢ;->clear()V

    .line 117
    return-void
.end method

.method protected ˊ(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lo/ᖮ;->ᓑ:Lo/ᒢ;

    invoke-virtual {v0, p1, p2}, Lo/ᒢ;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected ˊ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lo/ᖮ;->ᓑ:Lo/ᒢ;

    invoke-virtual {v0, p1, p2}, Lo/ᒢ;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method protected ˋ(Ljava/lang/Object;)I
    .locals 1

    .line 86
    iget-object v0, p0, Lo/ᖮ;->ᓑ:Lo/ᒢ;

    invoke-virtual {v0, p1}, Lo/ᒢ;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected ˎ(Ljava/lang/Object;)I
    .locals 1

    .line 91
    iget-object v0, p0, Lo/ᖮ;->ᓑ:Lo/ᒢ;

    invoke-virtual {v0, p1}, Lo/ᒢ;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected ˏ(II)Ljava/lang/Object;
    .locals 2

    .line 81
    iget-object v0, p0, Lo/ᖮ;->ᓑ:Lo/ᒢ;

    iget-object v0, v0, Lo/ᒢ;->ﭡ:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p2

    aget-object v0, v0, v1

    return-object v0
.end method
