.class Lo/ﺑ$ˏ;
.super Lo/ﺑ$ˎ;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ﺑ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "\u02cf"
.end annotation


# static fields
.field static ῑ:Ljava/lang/reflect/Field;

.field static ‿:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1129
    const/4 v0, 0x0

    sput-boolean v0, Lo/ﺑ$ˏ;->‿:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1127
    invoke-direct {p0}, Lo/ﺑ$ˎ;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Landroid/view/View;Lo/ﹾ;)V
    .locals 1

    .line 1153
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lo/ﹾ;->ᵕ()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lo/Ӏ;->ˎ(Landroid/view/View;Ljava/lang/Object;)V

    .line 1155
    return-void
.end method

.method public ˋ(Landroid/view/View;I)Z
    .locals 1

    .line 1132
    invoke-static {p1, p2}, Lo/Ӏ;->ˋ(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public ˎ(Landroid/view/View;I)Z
    .locals 1

    .line 1136
    invoke-static {p1, p2}, Lo/Ӏ;->ˎ(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public ι(Landroid/view/View;)Z
    .locals 3

    .line 1159
    sget-boolean v0, Lo/ﺑ$ˏ;->‿:Z

    if-eqz v0, :cond_0

    .line 1160
    const/4 v0, 0x0

    return v0

    .line 1162
    :cond_0
    sget-object v0, Lo/ﺑ$ˏ;->ῑ:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 1164
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "mAccessibilityDelegate"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lo/ﺑ$ˏ;->ῑ:Ljava/lang/reflect/Field;

    .line 1166
    sget-object v0, Lo/ﺑ$ˏ;->ῑ:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    goto :goto_0

    .line 1167
    :catch_0
    move-exception v2

    .line 1168
    const/4 v0, 0x1

    sput-boolean v0, Lo/ﺑ$ˏ;->‿:Z

    .line 1169
    const/4 v0, 0x0

    return v0

    .line 1173
    :cond_1
    :goto_0
    :try_start_1
    sget-object v0, Lo/ﺑ$ˏ;->ῑ:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 1174
    :catch_1
    move-exception v2

    .line 1175
    const/4 v0, 0x1

    sput-boolean v0, Lo/ﺑ$ˏ;->‿:Z

    .line 1176
    const/4 v0, 0x0

    return v0
.end method

.method public ﹳ(Landroid/view/View;)Lo/ᵘ;
    .locals 2

    .line 1182
    iget-object v0, p0, Lo/ﺑ$ˏ;->ῐ:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 1183
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lo/ﺑ$ˏ;->ῐ:Ljava/util/WeakHashMap;

    .line 1186
    :cond_0
    iget-object v0, p0, Lo/ﺑ$ˏ;->ῐ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ᵘ;

    move-object v1, v0

    .line 1187
    if-nez v1, :cond_1

    .line 1188
    new-instance v1, Lo/ᵘ;

    invoke-direct {v1, p1}, Lo/ᵘ;-><init>(Landroid/view/View;)V

    .line 1189
    iget-object v0, p0, Lo/ﺑ$ˏ;->ῐ:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    :cond_1
    return-object v1
.end method
