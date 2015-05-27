.class Lo/adm;
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
.field final synthetic byH:Lo/adj;

.field final synthetic byI:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/adj;Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lo/adm;->byH:Lo/adj;

    iput-object p2, p0, Lo/adm;->byI:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 124
    sget-object v0, Lo/vi$if;->bmV:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 125
    iget-object v0, p0, Lo/adm;->byH:Lo/adj;

    invoke-static {v0}, Lo/adj;->ˊ(Lo/adj;)Lo/vn;

    move-result-object v0

    iget-object v1, p0, Lo/adm;->byI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/vn;->ᔆ(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    return-void
.end method
