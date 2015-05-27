.class public abstract Lo/zw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/zz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/zw$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/zz<Lo/anh;>;"
    }
.end annotation


# instance fields
.field protected final bsh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Lo/xh;>;"
        }
    .end annotation
.end field

.field private final bsi:I

.field private final bsj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<Lo/zz$if;>;"
        }
    .end annotation
.end field

.field private final bsk:Lo/zw$if;

.field protected bsl:I

.field private ﮂ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lo/anh;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Map<Ljava/lang/String;Lo/xh;>;I)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lo/zw;->bsj:Ljava/util/Set;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/zw;->ﮂ:Ljava/util/ArrayList;

    .line 32
    iput-object p1, p0, Lo/zw;->bsh:Ljava/util/Map;

    .line 33
    iput p2, p0, Lo/zw;->bsi:I

    .line 34
    new-instance v0, Lo/zw$if;

    invoke-direct {v0, p0}, Lo/zw$if;-><init>(Lo/zw;)V

    iput-object v0, p0, Lo/zw;->bsk:Lo/zw$if;

    .line 35
    return-void
.end method

.method private sort()V
    .locals 7

    .line 68
    new-instance v2, Lo/zy;

    iget-object v0, p0, Lo/zw;->bsh:Ljava/util/Map;

    invoke-direct {v2, v0}, Lo/zy;-><init>(Ljava/util/Map;)V

    .line 69
    sget-object v3, Lo/zq;->bsf:[Lo/zq;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 70
    iget-object v0, p0, Lo/zw;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Lo/zy;->ˊ(Lo/zq;)Lo/zy;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 69
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lo/zw;->ﮂ:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/zw;->bsk:Lo/zw$if;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 73
    return-void
.end method

.method private va()V
    .locals 6

    .line 78
    iget v0, p0, Lo/zw;->bsi:I

    if-lez v0, :cond_1

    .line 79
    invoke-virtual {p0}, Lo/zw;->vc()I

    move-result v0

    iget v1, p0, Lo/zw;->bsi:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 80
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 81
    invoke-virtual {p0, v4}, Lo/zw;->ｪ(I)Lo/xh;

    move-result-object v5

    .line 82
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lo/xh;->uh()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v5}, Lo/zw;->ˎ(Lo/xh;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lo/zw;->ﮂ:Ljava/util/ArrayList;

    sget-object v1, Lo/anh$if;->bNK:Lo/anh$if;

    iget-object v2, v5, Lo/xh;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lo/anh;->ˊ(Lo/anh$if;Ljava/lang/String;)Lo/anh;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 87
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 38
    iget-object v0, p0, Lo/zw;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 39
    return-void
.end method

.method public vb()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Lo/anh;>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lo/zw;->ﮂ:Ljava/util/ArrayList;

    return-object v0
.end method

.method public vc()I
    .locals 1

    .line 110
    iget-object v0, p0, Lo/zw;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public vd()I
    .locals 1

    .line 114
    iget v0, p0, Lo/zw;->bsl:I

    return v0
.end method

.method public final ʻ(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Collection<Lo/anh;>;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lo/zw;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 48
    iget-object v0, p0, Lo/zw;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 49
    iget-object v0, p0, Lo/zw;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    invoke-direct {p0}, Lo/zw;->sort()V

    .line 52
    invoke-direct {p0}, Lo/zw;->va()V

    .line 53
    invoke-virtual {p0, p1}, Lo/zw;->ᐝ(Ljava/util/Collection;)V

    .line 55
    iget-object v0, p0, Lo/zw;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 58
    iget-object v0, p0, Lo/zw;->bsj:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/zz$if;

    move-object v4, v0

    .line 59
    if-nez v1, :cond_0

    .line 60
    const/4 v0, 0x0

    invoke-interface {v4, v0, v2}, Lo/zz$if;->ᐟ(II)V

    goto :goto_1

    .line 62
    :cond_0
    invoke-interface {v4}, Lo/zz$if;->onDataSetChanged()V

    .line 64
    :goto_1
    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method

.method public ˊ(Lo/zz$if;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lo/zw;->bsj:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public ˋ(Lo/zz$if;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lo/zw;->bsj:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method protected abstract ˎ(Lo/xh;)Z
.end method

.method protected abstract ᐝ(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/Collection<Lo/anh;>;)V"
        }
    .end annotation
.end method

.method public ー(Ljava/lang/String;)Lo/xh;
    .locals 1

    .line 92
    invoke-static {p1}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lo/zw;->bsh:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/xh;

    return-object v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ｪ(I)Lo/xh;
    .locals 2

    .line 42
    invoke-virtual {p0, p1}, Lo/zw;->ﾃ(I)Lo/anh;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lo/anh;->BW()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/zw;->ー(Ljava/lang/String;)Lo/xh;

    move-result-object v0

    return-object v0
.end method

.method public ﾃ(I)Lo/anh;
    .locals 1

    .line 105
    iget-object v0, p0, Lo/zw;->ﮂ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/anh;

    return-object v0
.end method

.method public synthetic ﾅ(I)Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0, p1}, Lo/zw;->ﾃ(I)Lo/anh;

    move-result-object v0

    return-object v0
.end method
