.class public final Lo/ᒰ;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᒰ$ˊ;,
        Lo/ᒰ$ˎ;,
        Lo/ᒰ$if;,
        Lo/ᒰ$ˋ;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::Lo/\u14b0$if;>Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final BZ:Lo/ᒰ$ˋ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u14b0$\u02cb<*TO;>;"
        }
    .end annotation
.end field

.field private final Ca:Lo/ᒰ$ˎ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/\u14b0$\u02ce<*>;"
        }
    .end annotation
.end field

.field private final Cb:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lcom/google/android/gms/common/api/Scope;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lo/ᒰ$ˋ;Lo/ᒰ$ˎ;[Lcom/google/android/gms/common/api/Scope;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::Lo/\u14b0$\u02ca;>(Lo/\u14b0$\u02cb<TC;TO;>;Lo/\u14b0$\u02ce<TC;>;[Lcom/google/android/gms/common/api/Scope;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/ᒰ;->BZ:Lo/ᒰ$ˋ;

    iput-object p2, p0, Lo/ᒰ;->Ca:Lo/ᒰ$ˎ;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lo/ᒰ;->Cb:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public ڽ()Lo/ᒰ$ˋ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\u14b0$\u02cb<*TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lo/ᒰ;->BZ:Lo/ᒰ$ˋ;

    return-object v0
.end method

.method public ܐ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Ljava/util/List<Lcom/google/android/gms/common/api/Scope;>;"
        }
    .end annotation

    iget-object v0, p0, Lo/ᒰ;->Cb:Ljava/util/ArrayList;

    return-object v0
.end method

.method public ܫ()Lo/ᒰ$ˎ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\u14b0$\u02ce<*>;"
        }
    .end annotation

    iget-object v0, p0, Lo/ᒰ;->Ca:Lo/ᒰ$ˎ;

    return-object v0
.end method
