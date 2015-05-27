.class Lo/gj$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/gl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/gj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field private final KB:Lo/ge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ge<*>;"
        }
    .end annotation
.end field

.field private final KC:Lo/fv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fv<*>;"
        }
    .end annotation
.end field

.field private final KF:Lo/jy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/jy<*>;"
        }
    .end annotation
.end field

.field private final KG:Z

.field private final KH:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;Lo/jy;ZLjava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Object;Lo/jy<*>;ZLjava/lang/Class<*>;)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    instance-of v0, p1, Lo/ge;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lo/ge;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lo/gj$if;->KB:Lo/ge;

    .line 120
    instance-of v0, p1, Lo/fv;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lo/fv;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lo/gj$if;->KC:Lo/fv;

    .line 123
    iget-object v0, p0, Lo/gj$if;->KB:Lo/ge;

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/gj$if;->KC:Lo/fv;

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lo/gr;->יּ(Z)V

    .line 124
    iput-object p2, p0, Lo/gj$if;->KF:Lo/jy;

    .line 125
    iput-boolean p3, p0, Lo/gj$if;->KG:Z

    .line 126
    iput-object p4, p0, Lo/gj$if;->KH:Ljava/lang/Class;

    .line 127
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lo/jy;ZLjava/lang/Class;Lo/gj$1;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2, p3, p4}, Lo/gj$if;-><init>(Ljava/lang/Object;Lo/jy;ZLjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/fl;Lo/jy;)Lo/gk;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:Ljava/lang/Object;>(Lo/fl;Lo/jy<TT;>;)Lo/gk<TT;>;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lo/gj$if;->KF:Lo/jy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/gj$if;->KF:Lo/jy;

    invoke-virtual {v0, p2}, Lo/jy;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/gj$if;->KG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/gj$if;->KF:Lo/jy;

    invoke-virtual {v0}, Lo/jy;->V()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lo/jy;->U()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lo/gj$if;->KH:Ljava/lang/Class;

    invoke-virtual {p2}, Lo/jy;->U()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    .line 134
    :goto_0
    if-eqz v7, :cond_3

    new-instance v0, Lo/gj;

    iget-object v1, p0, Lo/gj$if;->KB:Lo/ge;

    iget-object v2, p0, Lo/gj$if;->KC:Lo/fv;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lo/gj;-><init>(Lo/ge;Lo/fv;Lo/fl;Lo/jy;Lo/gl;Lo/gj$1;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method
