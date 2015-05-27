.class Lo/ajg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bHr:Lo/ajf;


# direct methods
.method constructor <init>(Lo/ajf;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lo/ajg;->bHr:Lo/ajf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 58
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 59
    iget-object v0, p0, Lo/ajg;->bHr:Lo/ajf;

    invoke-static {v0}, Lo/ajf;->ˊ(Lo/ajf;)V

    .line 61
    :cond_0
    return-void
.end method
