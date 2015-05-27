.class public Lo/vj;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bne:Lo/vi$if;

.field private bnf:Lo/vi$if;


# direct methods
.method public constructor <init>(Lo/vi$if;Lo/vi$if;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lo/vj;->bne:Lo/vi$if;

    .line 9
    iput-object p2, p0, Lo/vj;->bnf:Lo/vi$if;

    .line 10
    return-void
.end method


# virtual methods
.method public tN()V
    .locals 1

    .line 13
    iget-object v0, p0, Lo/vj;->bne:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 14
    return-void
.end method

.method public tO()V
    .locals 1

    .line 17
    iget-object v0, p0, Lo/vj;->bnf:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 18
    return-void
.end method
