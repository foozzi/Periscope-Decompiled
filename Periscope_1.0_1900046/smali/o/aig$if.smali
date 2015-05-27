.class Lo/aig$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aif$if$ˊ;
.implements Lo/ﺩ$if;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private final bGn:Lo/aif;

.field private final bGo:Lo/aij;


# direct methods
.method public constructor <init>(Lo/aif;Lo/aij;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lo/aig$if;->bGn:Lo/aif;

    .line 116
    iput-object p2, p0, Lo/aig$if;->bGo:Lo/aij;

    .line 117
    return-void
.end method


# virtual methods
.method public zM()V
    .locals 2

    .line 126
    iget-object v0, p0, Lo/aig$if;->bGo:Lo/aij;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/aij;->setRefreshing(Z)V

    .line 127
    return-void
.end method

.method public ᕁ()V
    .locals 1

    .line 121
    iget-object v0, p0, Lo/aig$if;->bGn:Lo/aif;

    invoke-virtual {v0}, Lo/aif;->zH()Lo/aif$if;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/aif$if;->ˊ(Lo/aif$if$ˊ;)V

    .line 122
    return-void
.end method
