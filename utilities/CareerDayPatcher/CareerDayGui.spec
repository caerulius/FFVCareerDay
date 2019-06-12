# -*- mode: python -*-

block_cipher = None


a = Analysis(['CareerDayGui.py'],
             pathex=['C:\\Users\\cae\\projects\\FFVCareerDay\\utilities\\CareerDayPatcher'],
             binaries=[],
             datas=[('../../bigbridge-web/favicon.ico', '.'), ('../../utilities/data/area.py', '.'), ('../../utilities/data/collectible.py', '.'), ('../../utilities/data/conductor.py', '.'), ('../../utilities/data/reward.py', '.'), ('../../utilities/data/enemy_handler.py', '.'), ('../../utilities/data/progression_translation.py', '.'), ('../../utilities/data/shop.py', '.'), ('../../utilities/data/shop_price.py', '.'), ('../../utilities/data/formation.py', '.'), ('../../utilities/data/monster_in_a_box.py', '.'), ('../../utilities/data/enemy.py', '.'), ('../../utilities/data/formation.py', '.'), ('../../utilities/data/text_parser.py', '.'), ('../../utilities/data/data_manager.py', '.'), ('../../utilities/data/tables/ability_id.csv', 'tables/'), ('../../utilities/data/tables/areas.csv', 'tables/'), ('../../utilities/data/tables/crystal_id.csv', 'tables/'), ('../../utilities/data/tables/item_id.csv', 'tables/'), ('../../utilities/data/tables/key_items.csv', 'tables/'), ('../../utilities/data/tables/gil_rewards.csv', 'tables/'), ('../../utilities/data/tables/magic_id.csv', 'tables/'), ('../../utilities/data/tables/rewards.csv', 'tables/'), ('../../utilities/data/tables/formation_id.csv', 'tables/'), ('../../utilities/data/tables/boss_scaling.csv', 'tables/'), ('../../utilities/data/tables/enemy_skills.csv', 'tables/'), ('../../utilities/data/tables/shop_id.csv', 'tables/'), ('../../utilities/data/tables/shop_prices.csv', 'tables/'), ('../../utilities/data/tables/enemy_data.csv', 'tables/'), ('../../utilities/data/tables/monster_in_a_box.csv', 'tables/'), ('../../utilities/data/tables/text_tables/ability_chest_text.csv', 'tables/text_tables/'), ('../../utilities/data/tables/text_tables/ability_shop_text.csv', 'tables/text_tables/'), ('../../utilities/data/tables/text_tables/job_chest_text.csv', 'tables/text_tables/'), ('../../utilities/data/tables/text_tables/job_shop_text.csv', 'tables/text_tables/'), ('../../utilities/data/tables/text_tables/key_item_reward_text.csv', 'tables/text_tables/'), ('../../utilities/data/tables/text_tables/key_item_text.csv', 'tables/text_tables/'), ('../../utilities/data/tables/text_tables/kuzar_rewards.csv', 'tables/text_tables/'), ('../../utilities/data/tables/text_tables/text_table_chest.csv', 'tables/text_tables'), ('../../utilities/data/tables/text_tables/text_table_shop.csv', 'tables/'), ('../../utilities/data/tables/text_tables/magic_chest_text.csv', 'tables/'), ('../../utilities/data/local-config.ini', '.'), ('../../utilities/CareerDayPatcher/patches/ffv_careerday.ips', 'patches/'), ('../../utilities/CareerDayPatcher/patches/ffv_projectdemi_vanilla.ips', 'patches/'), ('../../utilities/CareerDayPatcher/patches/rpge.ips', 'patches/'), ('../../utilities/CareerDayPatcher/asar.exe', '.'), ('../../utilities/CareerDayPatcher/asar.exe', '.'), ('../../utilities/CareerDayPatcher/CareerDayifier.py', '.')],
             hiddenimports=['pandas'],
             hookspath=[],
             runtime_hooks=[],
             excludes=[],
             win_no_prefer_redirects=False,
             win_private_assemblies=False,
             cipher=block_cipher,
             noarchive=False)
pyz = PYZ(a.pure, a.zipped_data,
             cipher=block_cipher)
exe = EXE(pyz,
          a.scripts,
          a.binaries,
          a.zipfiles,
          a.datas,
          [],
          name='CareerDayGui',
          debug=False,
          bootloader_ignore_signals=False,
          strip=False,
          upx=True,
          runtime_tmpdir=None,
          console=True , icon='..\\..\\bigbridge-web\\favicon.ico')
