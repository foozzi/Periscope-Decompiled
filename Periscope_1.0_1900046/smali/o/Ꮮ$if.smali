.class Lo/Ꮮ$if;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Ꮮ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:Ljava/lang/Object;V:Ljava/lang/Object;>Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final it:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private iu:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<TV;>;"
        }
    .end annotation
.end field

.field iw:Lo/Ꮮ$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u13de$if<TK;TV;>;"
        }
    .end annotation
.end field

.field ix:Lo/Ꮮ$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u13de$if<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/Ꮮ$if;-><init>(Ljava/lang/Object;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p0, p0, Lo/Ꮮ$if;->ix:Lo/Ꮮ$if;

    iput-object p0, p0, Lo/Ꮮ$if;->iw:Lo/Ꮮ$if;

    .line 127
    iput-object p1, p0, Lo/Ꮮ$if;->it:Ljava/lang/Object;

    .line 128
    return-void
.end method

.method static synthetic ᐝ(Lo/Ꮮ$if;)Ljava/lang/Object;
    .locals 1

    .line 114
    iget-object v0, p0, Lo/Ꮮ$if;->it:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lo/Ꮮ$if;->iu:Ljava/util/List;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/Ꮮ$if;->iu:Ljava/util/List;

    .line 143
    :cond_0
    iget-object v0, p0, Lo/Ꮮ$if;->iu:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-void
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lo/Ꮮ$if;->size()I

    move-result v2

    .line 132
    if-lez v2, :cond_0

    iget-object v0, p0, Lo/Ꮮ$if;->iu:Ljava/util/List;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 136
    iget-object v0, p0, Lo/Ꮮ$if;->iu:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/Ꮮ$if;->iu:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
