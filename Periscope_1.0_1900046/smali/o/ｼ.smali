.class public Lo/ｼ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:Ljava/lang/Object;Y:Ljava/lang/Object;>Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final iB:I

.field private iD:I

.field private final ng:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<TT;TY;>;"
        }
    .end annotation
.end field

.field private ᴾ:I


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x64

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lo/ｼ;->ng:Ljava/util/LinkedHashMap;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lo/ｼ;->iD:I

    .line 25
    iput p1, p0, Lo/ｼ;->iB:I

    .line 26
    iput p1, p0, Lo/ｼ;->ᴾ:I

    .line 27
    return-void
.end method

.method private ᴧ()V
    .locals 1

    .line 167
    iget v0, p0, Lo/ｼ;->ᴾ:I

    invoke-virtual {p0, v0}, Lo/ｼ;->trimToSize(I)V

    .line 168
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TY;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lo/ｼ;->ng:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TY;)TY;"
        }
    .end annotation

    .line 110
    invoke-virtual {p0, p2}, Lo/ｼ;->ᐣ(Ljava/lang/Object;)I

    move-result v2

    .line 111
    iget v0, p0, Lo/ｼ;->ᴾ:I

    if-lt v2, v0, :cond_0

    .line 112
    invoke-virtual {p0, p1, p2}, Lo/ｼ;->ᐝ(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 116
    :cond_0
    iget-object v0, p0, Lo/ｼ;->ng:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 117
    if-eqz p2, :cond_1

    .line 118
    iget v0, p0, Lo/ｼ;->iD:I

    invoke-virtual {p0, p2}, Lo/ｼ;->ᐣ(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lo/ｼ;->iD:I

    .line 120
    :cond_1
    if-eqz v3, :cond_2

    .line 122
    iget v0, p0, Lo/ｼ;->iD:I

    invoke-virtual {p0, v3}, Lo/ｼ;->ᐣ(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lo/ｼ;->iD:I

    .line 124
    :cond_2
    invoke-direct {p0}, Lo/ｼ;->ᴧ()V

    .line 126
    return-object v3
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TY;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lo/ｼ;->ng:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 136
    if-eqz v2, :cond_0

    .line 137
    iget v0, p0, Lo/ｼ;->iD:I

    invoke-virtual {p0, v2}, Lo/ｼ;->ᐣ(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lo/ｼ;->iD:I

    .line 139
    :cond_0
    return-object v2
.end method

.method protected trimToSize(I)V
    .locals 5

    .line 156
    :goto_0
    iget v0, p0, Lo/ｼ;->iD:I

    if-le v0, p1, :cond_0

    .line 157
    iget-object v0, p0, Lo/ｼ;->ng:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 158
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 159
    iget v0, p0, Lo/ｼ;->iD:I

    invoke-virtual {p0, v3}, Lo/ｼ;->ᐣ(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lo/ｼ;->iD:I

    .line 160
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 161
    iget-object v0, p0, Lo/ｼ;->ng:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-virtual {p0, v4, v3}, Lo/ｼ;->ᐝ(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method protected ᐝ(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TY;)V"
        }
    .end annotation

    .line 62
    return-void
.end method

.method protected ᐣ(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TY;)I"
        }
    .end annotation

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public ᒪ()V
    .locals 1

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ｼ;->trimToSize(I)V

    .line 147
    return-void
.end method

.method public 丿()I
    .locals 1

    .line 75
    iget v0, p0, Lo/ｼ;->iD:I

    return v0
.end method
