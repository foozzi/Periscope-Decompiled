.class public Lo/zp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/zp$if;,
        Lo/zp$ˊ;
    }
.end annotation


# instance fields
.field private final bny:Lo/ot;

.field private brW:Lo/zw;

.field private brX:Lo/zw;

.field private brY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<Ljava/lang/String;Lo/xh;>;"
        }
    .end annotation
.end field

.field private brZ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<Ljava/lang/String;Lo/anf;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/ot;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/zp;->brY:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/zp;->brZ:Ljava/util/HashMap;

    .line 29
    iput-object p1, p0, Lo/zp;->bny:Lo/ot;

    .line 30
    new-instance v0, Lo/zp$if;

    iget-object v1, p0, Lo/zp;->brY:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lo/zp$if;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lo/zp;->brX:Lo/zw;

    .line 31
    new-instance v0, Lo/zp$ˊ;

    iget-object v1, p0, Lo/zp;->brY:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lo/zp$ˊ;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lo/zp;->brW:Lo/zw;

    .line 32
    return-void
.end method

.method private ˊ(Lo/xh;)V
    .locals 3

    .line 85
    iget-object v0, p0, Lo/zp;->brY:Ljava/util/HashMap;

    iget-object v1, p1, Lo/xh;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/xh;

    move-object v2, v0

    .line 86
    if-eqz v2, :cond_0

    iget-boolean v0, v2, Lo/xh;->boV:Z

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/xh;->boV:Z

    .line 89
    :cond_0
    iget-object v0, p0, Lo/zp;->brY:Ljava/util/HashMap;

    iget-object v1, p1, Lo/xh;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method


# virtual methods
.method public logout()V
    .locals 1

    .line 35
    iget-object v0, p0, Lo/zp;->brW:Lo/zw;

    invoke-virtual {v0}, Lo/zw;->clear()V

    .line 36
    iget-object v0, p0, Lo/zp;->brX:Lo/zw;

    invoke-virtual {v0}, Lo/zw;->clear()V

    .line 37
    iget-object v0, p0, Lo/zp;->brZ:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 38
    iget-object v0, p0, Lo/zp;->brY:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 39
    return-void
.end method

.method public uW()Lo/zw;
    .locals 1

    .line 103
    iget-object v0, p0, Lo/zp;->brX:Lo/zw;

    return-object v0
.end method

.method public uX()Lo/zw;
    .locals 1

    .line 107
    iget-object v0, p0, Lo/zp;->brW:Lo/zw;

    return-object v0
.end method

.method public uY()V
    .locals 2

    .line 153
    iget-object v0, p0, Lo/zp;->bny:Lo/ot;

    sget-object v1, Lo/aak;->bua:Lo/aak;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public uZ()V
    .locals 2

    .line 157
    iget-object v0, p0, Lo/zp;->bny:Lo/ot;

    sget-object v1, Lo/aak;->btW:Lo/aak;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 158
    return-void
.end method

.method public ˊ(Ljava/lang/String;Lo/anf;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lo/zp;->brZ:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method

.method public ˊ(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lo/xh;>;Ljava/util/List<Lo/xh;>;Ljava/util/List<Lo/xh;>;)V"
        }
    .end annotation

    .line 43
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 44
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 45
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 48
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/xh;

    move-object v5, v0

    .line 49
    invoke-direct {p0, v5}, Lo/zp;->ˊ(Lo/xh;)V

    .line 50
    goto :goto_0

    .line 53
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/xh;

    move-object v5, v0

    .line 54
    iget-boolean v0, v5, Lo/xh;->boU:Z

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, v5, Lo/xh;->id:Ljava/lang/String;

    invoke-static {v0}, Lo/anh;->ᵖ(Ljava/lang/String;)Lo/anh;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_1
    invoke-direct {p0, v5}, Lo/zp;->ˊ(Lo/xh;)V

    .line 58
    goto :goto_1

    .line 61
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/xh;

    move-object v5, v0

    .line 62
    invoke-virtual {v5}, Lo/xh;->uh()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    iget-object v0, v5, Lo/xh;->id:Ljava/lang/String;

    invoke-static {v0}, Lo/anh;->ᵖ(Ljava/lang/String;)Lo/anh;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 64
    :cond_3
    iget-boolean v0, v5, Lo/xh;->boU:Z

    if-eqz v0, :cond_4

    .line 65
    iget-object v0, v5, Lo/xh;->id:Ljava/lang/String;

    invoke-static {v0}, Lo/anh;->ᵖ(Ljava/lang/String;)Lo/anh;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 67
    :cond_4
    iget-object v0, v5, Lo/xh;->id:Ljava/lang/String;

    invoke-static {v0}, Lo/anh;->ᵖ(Ljava/lang/String;)Lo/anh;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    :goto_3
    invoke-direct {p0, v5}, Lo/zp;->ˊ(Lo/xh;)V

    .line 70
    goto :goto_2

    .line 73
    :cond_5
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 74
    invoke-virtual {v4, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 75
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 76
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 78
    iget-object v0, p0, Lo/zp;->brW:Lo/zw;

    invoke-virtual {v0, v4}, Lo/zw;->ʻ(Ljava/util/Collection;)V

    .line 81
    invoke-virtual {p0}, Lo/zp;->uZ()V

    .line 82
    return-void
.end method

.method public ˋ(Lo/xh;)V
    .locals 2

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 112
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {p0, v1}, Lo/zp;->ᐧ(Ljava/util/List;)V

    .line 114
    return-void
.end method

.method public ˏ(Ljava/lang/String;II)V
    .locals 2

    .line 149
    iget-object v0, p0, Lo/zp;->brZ:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {p3, v1, p2}, Lo/anf;->ۥ(III)Lo/anf;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
.end method

.method public ـ(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lo/xh;>;)V"
        }
    .end annotation

    .line 93
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 94
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/xh;

    move-object v4, v0

    .line 95
    iget-object v0, v4, Lo/xh;->id:Ljava/lang/String;

    invoke-static {v0}, Lo/anh;->ᵖ(Ljava/lang/String;)Lo/anh;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lo/zp;->brY:Ljava/util/HashMap;

    iget-object v1, v4, Lo/xh;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lo/zp;->brX:Lo/zw;

    invoke-virtual {v0, v2}, Lo/zw;->ʻ(Ljava/util/Collection;)V

    .line 99
    invoke-virtual {p0}, Lo/zp;->uY()V

    .line 100
    return-void
.end method

.method public ᐧ(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lo/xh;>;)V"
        }
    .end annotation

    .line 117
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/xh;

    move-object v3, v0

    .line 118
    iget-object v0, p0, Lo/zp;->brY:Ljava/util/HashMap;

    iget-object v1, v3, Lo/xh;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/xh;

    move-object v4, v0

    .line 119
    if-eqz v4, :cond_2

    .line 120
    invoke-virtual {v4}, Lo/xh;->uh()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, v4, Lo/xh;->boX:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {v3}, Lo/xh;->uh()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, v3, Lo/xh;->boX:Z

    .line 126
    :cond_1
    iget-boolean v0, v4, Lo/xh;->boV:Z

    if-eqz v0, :cond_2

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, v3, Lo/xh;->boV:Z

    .line 130
    :cond_2
    iget-object v0, p0, Lo/zp;->brY:Ljava/util/HashMap;

    iget-object v1, v3, Lo/xh;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    goto :goto_0

    .line 133
    :cond_3
    iget-object v0, p0, Lo/zp;->bny:Lo/ot;

    sget-object v1, Lo/aak;->btX:Lo/aak;

    invoke-virtual {v0, v1}, Lo/ot;->ˣ(Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public ị(Ljava/lang/String;)Lo/xh;
    .locals 1

    .line 137
    iget-object v0, p0, Lo/zp;->brY:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/xh;

    return-object v0
.end method

.method public ゝ(Ljava/lang/String;)Lo/anf;
    .locals 1

    .line 145
    iget-object v0, p0, Lo/zp;->brZ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/anf;

    return-object v0
.end method
