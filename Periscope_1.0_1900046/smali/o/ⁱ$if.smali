.class public Lo/ⁱ$if;
.super Lo/ʳ$if;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ⁱ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# static fields
.field public static final ᒾ:Lo/ʳ$if$if;


# instance fields
.field public actionIntent:Landroid/app/PendingIntent;

.field public icon:I

.field public title:Ljava/lang/CharSequence;

.field private final ᑋ:Landroid/os/Bundle;

.field private final ᑦ:[Lo/ۥ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2135
    new-instance v0, Lo/ﹶ;

    invoke-direct {v0}, Lo/ﹶ;-><init>()V

    sput-object v0, Lo/ⁱ$if;->ᒾ:Lo/ʳ$if$if;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 6

    .line 1791
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lo/ⁱ$if;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lo/ۥ;)V

    .line 1792
    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lo/ۥ;)V
    .locals 1

    .line 1795
    invoke-direct {p0}, Lo/ʳ$if;-><init>()V

    .line 1796
    iput p1, p0, Lo/ⁱ$if;->icon:I

    .line 1797
    invoke-static {p2}, Lo/ⁱ$ˎ;->ᐝ(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lo/ⁱ$if;->title:Ljava/lang/CharSequence;

    .line 1798
    iput-object p3, p0, Lo/ⁱ$if;->actionIntent:Landroid/app/PendingIntent;

    .line 1799
    if-eqz p4, :cond_0

    move-object v0, p4

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v0, p0, Lo/ⁱ$if;->ᑋ:Landroid/os/Bundle;

    .line 1800
    iput-object p5, p0, Lo/ⁱ$if;->ᑦ:[Lo/ۥ;

    .line 1801
    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 1823
    iget-object v0, p0, Lo/ⁱ$if;->ᑋ:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getIcon()I
    .locals 1

    .line 1805
    iget v0, p0, Lo/ⁱ$if;->icon:I

    return v0
.end method

.method protected getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1810
    iget-object v0, p0, Lo/ⁱ$if;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected ﹶ()Landroid/app/PendingIntent;
    .locals 1

    .line 1815
    iget-object v0, p0, Lo/ⁱ$if;->actionIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public ﹺ()[Lo/ۥ;
    .locals 1

    .line 1832
    iget-object v0, p0, Lo/ⁱ$if;->ᑦ:[Lo/ۥ;

    return-object v0
.end method

.method public synthetic ｰ()[Lo/ᐩ$if;
    .locals 1

    .line 1772
    invoke-virtual {p0}, Lo/ⁱ$if;->ﹺ()[Lo/ۥ;

    move-result-object v0

    return-object v0
.end method
