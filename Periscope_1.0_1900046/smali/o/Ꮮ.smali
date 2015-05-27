.class Lo/Ꮮ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ꮮ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::Lo/\u14a7;V:Ljava/lang/Object;>Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final ir:Lo/Ꮮ$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u13de$if<TK;TV;>;"
        }
    .end annotation
.end field

.field private final is:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<TK;Lo/\u13de$if<TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lo/Ꮮ$if;

    invoke-direct {v0}, Lo/Ꮮ$if;-><init>()V

    iput-object v0, p0, Lo/Ꮮ;->ir:Lo/Ꮮ$if;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/Ꮮ;->is:Ljava/util/Map;

    .line 114
    return-void
.end method

.method private ˊ(Lo/Ꮮ$if;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u13de$if<TK;TV;>;)V"
        }
    .end annotation

    .line 90
    invoke-static {p1}, Lo/Ꮮ;->ˏ(Lo/Ꮮ$if;)V

    .line 91
    iget-object v0, p0, Lo/Ꮮ;->ir:Lo/Ꮮ$if;

    iput-object v0, p1, Lo/Ꮮ$if;->ix:Lo/Ꮮ$if;

    .line 92
    iget-object v0, p0, Lo/Ꮮ;->ir:Lo/Ꮮ$if;

    iget-object v0, v0, Lo/Ꮮ$if;->iw:Lo/Ꮮ$if;

    iput-object v0, p1, Lo/Ꮮ$if;->iw:Lo/Ꮮ$if;

    .line 93
    invoke-static {p1}, Lo/Ꮮ;->ˎ(Lo/Ꮮ$if;)V

    .line 94
    return-void
.end method

.method private ˋ(Lo/Ꮮ$if;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\u13de$if<TK;TV;>;)V"
        }
    .end annotation

    .line 98
    invoke-static {p1}, Lo/Ꮮ;->ˏ(Lo/Ꮮ$if;)V

    .line 99
    iget-object v0, p0, Lo/Ꮮ;->ir:Lo/Ꮮ$if;

    iget-object v0, v0, Lo/Ꮮ$if;->ix:Lo/Ꮮ$if;

    iput-object v0, p1, Lo/Ꮮ$if;->ix:Lo/Ꮮ$if;

    .line 100
    iget-object v0, p0, Lo/Ꮮ;->ir:Lo/Ꮮ$if;

    iput-object v0, p1, Lo/Ꮮ$if;->iw:Lo/Ꮮ$if;

    .line 101
    invoke-static {p1}, Lo/Ꮮ;->ˎ(Lo/Ꮮ$if;)V

    .line 102
    return-void
.end method

.method private static ˎ(Lo/Ꮮ$if;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:Ljava/lang/Object;V:Ljava/lang/Object;>(Lo/\u13de$if<TK;TV;>;)V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lo/Ꮮ$if;->iw:Lo/Ꮮ$if;

    iput-object p0, v0, Lo/Ꮮ$if;->ix:Lo/Ꮮ$if;

    .line 106
    iget-object v0, p0, Lo/Ꮮ$if;->ix:Lo/Ꮮ$if;

    iput-object p0, v0, Lo/Ꮮ$if;->iw:Lo/Ꮮ$if;

    .line 107
    return-void
.end method

.method private static ˏ(Lo/Ꮮ$if;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:Ljava/lang/Object;V:Ljava/lang/Object;>(Lo/\u13de$if<TK;TV;>;)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lo/Ꮮ$if;->ix:Lo/Ꮮ$if;

    iget-object v1, p0, Lo/Ꮮ$if;->iw:Lo/Ꮮ$if;

    iput-object v1, v0, Lo/Ꮮ$if;->iw:Lo/Ꮮ$if;

    .line 111
    iget-object v0, p0, Lo/Ꮮ$if;->iw:Lo/Ꮮ$if;

    iget-object v1, p0, Lo/Ꮮ$if;->ix:Lo/Ꮮ$if;

    iput-object v1, v0, Lo/Ꮮ$if;->ix:Lo/Ꮮ$if;

    .line 112
    return-void
.end method


# virtual methods
.method public removeLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lo/Ꮮ;->ir:Lo/Ꮮ$if;

    iget-object v2, v0, Lo/Ꮮ$if;->ix:Lo/Ꮮ$if;

    .line 52
    :goto_0
    iget-object v0, p0, Lo/Ꮮ;->ir:Lo/Ꮮ$if;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    invoke-virtual {v2}, Lo/Ꮮ$if;->removeLast()Ljava/lang/Object;

    move-result-object v3

    .line 54
    if-eqz v3, :cond_0

    .line 55
    return-object v3

    .line 61
    :cond_0
    invoke-static {v2}, Lo/Ꮮ;->ˏ(Lo/Ꮮ$if;)V

    .line 62
    iget-object v0, p0, Lo/Ꮮ;->is:Ljava/util/Map;

    invoke-static {v2}, Lo/Ꮮ$if;->ᐝ(Lo/Ꮮ$if;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {v2}, Lo/Ꮮ$if;->ᐝ(Lo/Ꮮ$if;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᒧ;

    invoke-interface {v0}, Lo/ᒧ;->ᒫ()V

    .line 66
    iget-object v2, v2, Lo/Ꮮ$if;->ix:Lo/Ꮮ$if;

    .line 67
    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "GroupedLinkedMap( "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lo/Ꮮ;->ir:Lo/Ꮮ$if;

    iget-object v3, v0, Lo/Ꮮ$if;->iw:Lo/Ꮮ$if;

    .line 76
    const/4 v4, 0x0

    .line 77
    :goto_0
    iget-object v0, p0, Lo/Ꮮ;->ir:Lo/Ꮮ$if;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    const/4 v4, 0x1

    .line 79
    const/16 v0, 0x7b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3}, Lo/Ꮮ$if;->ᐝ(Lo/Ꮮ$if;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lo/Ꮮ$if;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v3, v3, Lo/Ꮮ$if;->iw:Lo/Ꮮ$if;

    goto :goto_0

    .line 82
    :cond_0
    if-eqz v4, :cond_1

    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 85
    :cond_1
    const-string v0, " )"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lo/ᒧ;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lo/Ꮮ;->is:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Ꮮ$if;

    move-object v1, v0

    .line 24
    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lo/Ꮮ$if;

    invoke-direct {v1, p1}, Lo/Ꮮ$if;-><init>(Ljava/lang/Object;)V

    .line 26
    invoke-direct {p0, v1}, Lo/Ꮮ;->ˋ(Lo/Ꮮ$if;)V

    .line 27
    iget-object v0, p0, Lo/Ꮮ;->is:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {p1}, Lo/ᒧ;->ᒫ()V

    .line 32
    :goto_0
    invoke-virtual {v1, p2}, Lo/Ꮮ$if;->add(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public ˋ(Lo/ᒧ;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lo/Ꮮ;->is:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Ꮮ$if;

    move-object v1, v0

    .line 37
    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lo/Ꮮ$if;

    invoke-direct {v1, p1}, Lo/Ꮮ$if;-><init>(Ljava/lang/Object;)V

    .line 39
    iget-object v0, p0, Lo/Ꮮ;->is:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p1}, Lo/ᒧ;->ᒫ()V

    .line 44
    :goto_0
    invoke-direct {p0, v1}, Lo/Ꮮ;->ˊ(Lo/Ꮮ$if;)V

    .line 46
    invoke-virtual {v1}, Lo/Ꮮ$if;->removeLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
