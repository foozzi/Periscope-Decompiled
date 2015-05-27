.class Lo/yw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bqV:Lo/yq$aux;


# direct methods
.method constructor <init>(Lo/yq$aux;)V
    .locals 0

    .line 754
    iput-object p1, p0, Lo/yw;->bqV:Lo/yq$aux;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 757
    iget-object v0, p0, Lo/yw;->bqV:Lo/yq$aux;

    iget-object v0, v0, Lo/yq$aux;->bqL:Lo/yq;

    invoke-static {v0}, Lo/yq;->ˋ(Lo/yq;)Lo/yp$if;

    move-result-object v0

    invoke-interface {v0}, Lo/yp$if;->uu()V

    .line 758
    return-void
.end method
