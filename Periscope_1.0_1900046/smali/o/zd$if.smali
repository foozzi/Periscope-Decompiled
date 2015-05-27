.class Lo/zd$if;
.super Lo/zd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/zd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "if"
.end annotation


# instance fields
.field final brf:Ljava/lang/String;

.field final brg:Ljava/lang/String;

.field final brh:[B

.field final bri:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lo/zd;-><init>()V

    .line 16
    iput-object p1, p0, Lo/zd$if;->brf:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lo/zd$if;->brg:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lo/zd$if;->brh:[B

    .line 19
    iput-object p4, p0, Lo/zd$if;->bri:Ljava/lang/String;

    .line 20
    return-void
.end method
